# Design: Spec Source Optimization

**Status:** Draft  
**Authors:** TBD  
**Last Updated:** 2026-06-02

## Executive Summary

The `azure-rest-api-specs` repository has grown to a point where two structural issues significantly impact maintainability, contributor experience, and CI performance:

1. **readme.md complexity** — Each service uses a bespoke AutoRest-format markdown file that conflates version metadata, code generation settings, and tooling configuration. These files are hard to maintain and parse programmatically.

2. **x-ms-examples bloat** — The repository contains ~282,000 example files. Research shows **~60% are duplicates** (~170,000 files), copied across API versions with no or trivial differences.

This document proposes three interconnected solutions:

- A `versions.yaml` file as a simple, machine-readable replacement for readme.md
- A deduplication strategy for x-ms-examples
- A static service layer that reconstructs the expected folder structure for consumers

---

## Table of Contents

- [Motivation](#motivation)
- [Design 1: versions.yaml](#design-1-versionsyaml)
- [Design 2: x-ms-examples Deduplication](#design-2-x-ms-examples-deduplication)
- [Design 3: Static Service Layer](#design-3-static-service-layer)
- [Open Questions](#open-questions)

---

## Motivation

### The readme.md Problem

Today, every service in the repository has a `readme.md` that serves as the entrypoint for AutoRest code generation. A typical readme.md contains:

- Client/package title
- API type (ARM or data-plane)
- Version "tags" mapping to input files
- Language-specific code generation settings
- Suppressions and validation rules
- Credential/auth configuration

**Problems:**
- The format is a non-standard markdown/YAML hybrid that only AutoRest understands
- Version metadata is buried in tag blocks — not queryable without parsing the full file
- Swagger-only services and TypeSpec services have different needs but share the same format
- Adding a new API version requires editing multiple sections of a complex file
- There is no schema or validation for the format

### The x-ms-examples Problem

Every API version folder contains an `examples/` directory with JSON files that demonstrate request/response pairs for each operation. When a new API version is created, all examples are typically copied forward — even when the operations haven't changed.

**Research findings (30-service random sample, extrapolated to full repo):**

| Metric | Sample (9,706 files) | Repo Estimate (~282K files) |
|--------|---------------------|---------------------------|
| Exact byte-identical duplicates | 18.1% | ~51,000 files |
| Differ only in api-version strings | 42.1% | ~119,000 files |
| **Total removable duplicates** | **60.2%** | **~170,000 files** |
| Unique/necessary files | 39.8% | ~112,000 files |

Per-service deduplication rates:

| Service | Total Files | Exact Dupes | Version-Only Dupes | Combined |
|---------|-------------|-------------|--------------------|---------:|
| ServiceBus | 965 | 16.6% | 75.5% | **92.1%** |
| VideoIndexer | 403 | 0.0% | 70.7% | **70.7%** |
| NotificationHubs | 171 | 20.5% | 40.9% | **61.4%** |
| Confluent | 416 | 16.1% | 45.2% | **61.3%** |
| Portal | 73 | 0.0% | 64.4% | **64.4%** |

**Impact:** Removing ~170K duplicate files would significantly reduce repository size, clone times, CI processing, and PR diff noise.

### The Partner Consumption Problem

Multiple teams consume the repository expecting a specific layout:
- SDK generators (AutoRest, TypeSpec emitters)
- Documentation pipelines
- Azure Portal
- API reviewers (APIView)

Today, the source repo must simultaneously satisfy the authoring workflow AND all consumer expectations. This makes structural changes (like deduplication) difficult because consumers depend on the exact file layout.

---

## Design 1: versions.yaml

### Purpose

A simple, machine-readable file that declares all API versions for a service — replacing the version-metadata role of readme.md.

### Location

```
specification/<service>/<RP-or-service-name>/versions.yaml
```

One file per service, at the same level where `readme.md` lives today.

### Schema

```yaml
# versions.yaml
versions:
  - version: "2024-06-01"

  - version: "2024-03-01-preview"

  - version: "2021-03-01"
    input-files:                    # only needed for swagger versions
      - stable/2021-03-01/compute.json
      - stable/2021-03-01/disk.json

  - version: "2020-06-01"
    input-files:
      - stable/2020-06-01/compute.json
```

### What Is Inferred (Not Declared)

| Property | Inferred From |
|----------|---------------|
| **Service name** | Folder path (e.g., `specification/compute/resource-manager/Microsoft.Compute/`) |
| **Service type** (ARM / data-plane) | Folder path (`resource-manager/` vs `data-plane/`) |
| **Status** (stable / preview) | Version string — contains `-preview` → preview; otherwise → stable |
| **Source** (typespec / swagger) | Presence of `input-files` field → swagger; absence → typespec (tooling resolves via `tspconfig.yaml` / `@versioned` enum) |

The principle is: **don't repeat information that's already encoded in the repo structure or derivable from conventions.**

### Design Decisions

| Decision | Rationale |
|----------|-----------|
| **Manually authored** | Swagger versions can't be reliably auto-detected; keeps a single source of truth for "which versions exist." |
| **Minimal fields** | Only declare what can't be inferred. Service name, type, status, and source are all derivable from context. |
| **`input-files` as the swagger marker** | If present, the version is swagger-sourced and these are its spec files. If absent, tooling knows to look at TypeSpec compilation output. |
| **No codegen settings** | Code generation config belongs in `tspconfig.yaml` (TypeSpec) or language-specific config files — not mixed into version metadata. |
| **Flat version list** | Simple to parse; no "tag" indirection. Ordering is chronological. |
| **YAML format** | Human-readable, supports comments, already used for `tspconfig.yaml`. A JSON Schema will be provided for validation. |

### What versions.yaml Does NOT Replace

- Language-specific codegen settings → stay in `tspconfig.yaml` or dedicated config files
- Suppressions → stay in `tspconfig.yaml` or a dedicated suppressions file
- The `readme.md` file itself (during transition) → generated from versions.yaml

### Migration Path

```
Phase 1: versions.yaml introduced alongside readme.md
         ├─ Both are maintained; tooling reads readme.md
         └─ Generator validates they stay in sync

Phase 2: Tooling migrates to read versions.yaml directly
         ├─ readme.md is generated from versions.yaml
         └─ Manual edits to readme.md are blocked by CI

Phase 3: readme.md is no longer checked in
         └─ Generated on-demand by the static service layer
```

---

## Design 2: x-ms-examples Deduplication

### Constraint

**The raw repository must remain directly consumable by existing tools** (AutoRest, SDK automation) without requiring a build step. Symlinks are NOT an option (Windows issues, git complexity). However, swagger `$ref` paths in x-ms-examples are already followed by tooling — so we can point them to a different relative path.

### Approach: Inherit from Previous Version via $ref

Instead of a separate shared folder (which creates lifecycle questions about when files move in/out), examples stay where they were **first introduced**. Later versions that don't change an example simply `$ref` back to the original version's copy.

#### Principle: Examples Never Move

- An example lives in the version that **first created it**
- A new version that reuses the same example points its `$ref` to the original version's file
- A new version that **changes** an example creates its own copy in its own `examples/` folder
- No "shared" folder, no file movement, no ambiguity about ownership

#### Proposed Structure

```
specification/digitaltwins/resource-manager/Microsoft.DigitalTwins/
├── stable/2020-12-01/
│   ├── digitaltwins.json
│   └── examples/
│       ├── DigitalTwinsGet_example.json       ← original, lives here forever
│       ├── DigitalTwinsDelete_example.json
│       └── DigitalTwinsPatch_example.json
├── stable/2023-01-31/
│   ├── digitaltwins.json
│   └── examples/
│       ├── NewOperation_example.json          ← new in this version
│       └── DigitalTwinsPatch_example.json     ← changed in this version (new copy)
│       (Get and Delete are NOT here — they haven't changed)
├── stable/2025-01-01/
│   ├── digitaltwins.json
│   └── examples/
│       └── AnotherNew_example.json            ← new in this version
│       (everything else inherited via $ref)
```

#### $ref in Swagger Files

```json
// stable/2023-01-31/digitaltwins.json
"x-ms-examples": {
  "Get DigitalTwins": {
    "$ref": "../2020-12-01/examples/DigitalTwinsGet_example.json"  // unchanged → points back
  },
  "Delete DigitalTwins": {
    "$ref": "../2020-12-01/examples/DigitalTwinsDelete_example.json"  // unchanged → points back
  },
  "Patch DigitalTwins": {
    "$ref": "./examples/DigitalTwinsPatch_example.json"  // changed → local copy
  },
  "New Operation": {
    "$ref": "./examples/NewOperation_example.json"  // new → local
  }
}
```

```json
// stable/2025-01-01/digitaltwins.json
"x-ms-examples": {
  "Get DigitalTwins": {
    "$ref": "../2020-12-01/examples/DigitalTwinsGet_example.json"  // still unchanged
  },
  "Patch DigitalTwins": {
    "$ref": "../2023-01-31/examples/DigitalTwinsPatch_example.json"  // last changed in 2023
  },
  "New Operation": {
    "$ref": "../2023-01-31/examples/NewOperation_example.json"  // introduced in 2023, unchanged
  },
  "Another New": {
    "$ref": "./examples/AnotherNew_example.json"  // new in this version
  }
}
```

#### Why This Works

| Property | Benefit |
|----------|---------|
| **No file movement** | Examples stay where they were created; never need to reorganize |
| **Clear ownership** | Each example belongs to the version that introduced/changed it |
| **No ambiguity** | The `$ref` in the swagger is explicit — no resolution logic needed |
| **Existing tooling works** | AutoRest/tools already follow relative `$ref` paths |
| **Easy to author** | When adding a new version: only create example files for genuinely new/changed operations |
| **Git history preserved** | No renames/moves; diff shows only real changes |

### Handling Version-Only Differences

When a swagger file in `stable/2023-01-31/` references an example from `stable/2020-12-01/examples/`, the example body may contain the old api-version string (e.g., `"api-version": "2020-12-01"` in the URL or parameters). This is a tradeoff:

**The problem:**
- The example content is technically "wrong" for the referencing version — it shows an older api-version
- Consumers displaying examples (docs, portal, try-it) may show the stale version string

**Options:**

| Approach | Pros | Cons |
|----------|------|------|
| **Accept stale api-version** — treat it as illustrative | Maximum dedup (60%); zero maintenance | Confusing for consumers expecting exact version match |
| **Patch on reference** — version-specific overlay | Correct content per version | Requires a patching mechanism |
| **Local copy only when version differs** | Simple; no new concepts | Only 18% dedup (exact matches only) |

**Recommended: Patch on reference**

When a `$ref` points to an example from a different api-version and the content needs version-specific values, the referencing version can declare a lightweight patch:

```json
// stable/2023-01-31/digitaltwins.json
"x-ms-examples": {
  "Get DigitalTwins": {
    "$ref": "../2020-12-01/examples/DigitalTwinsGet_example.json",
    "x-ms-example-patch": {
      "parameters.api-version": "2023-01-31"
    }
  }
}
```

Alternatively, the patch could be a sibling file:

```
stable/2023-01-31/
├── digitaltwins.json
└── examples/
    └── DigitalTwinsGet_example.patch.json   ← only the fields that differ
```

```json
// DigitalTwinsGet_example.patch.json
{
  "parameters": {
    "api-version": "2023-01-31"
  }
}
```

**Tradeoffs of patching:**
- Adds a new concept (patch files or inline patch extension) that tooling must understand
- But it's optional — only needed when the api-version difference matters to consumers
- The static service layer can always produce fully-resolved examples by applying patches

**Fallback:** If patching is too complex to adopt immediately, start with "accept stale api-version" for dedup and let the static service layer inject correct versions when serving to consumers. Authors can always create a local copy if correctness is critical for a specific example.

### CI Enforcement

1. **Duplicate detection** — CI detects when a new version adds an example file that is identical (or version-normalized-identical) to one in a previous version. Fails with: "This example is unchanged from version X — use a `$ref` to `../X/examples/file.json` instead."
2. **New version validation** — When a PR adds a new API version, CI checks that its `examples/` folder only contains genuinely new or modified examples.
3. **Migration tool** — A script per service that:
   - Compares example files across versions
   - Identifies the earliest version each example appeared in
   - Rewrites `$ref` paths in newer swagger files to point back to the origin version
   - Deletes redundant copies

### Migration Example

**Before (current state — full duplication):**
```
stable/2020-12-01/examples/Get.json     ← original
stable/2023-01-31/examples/Get.json     ← identical copy
stable/2025-01-01/examples/Get.json     ← identical copy
```

**After (deduplicated):**
```
stable/2020-12-01/examples/Get.json     ← only copy (canonical)
```
+ swagger files in 2023 and 2025 use `$ref: "../2020-12-01/examples/Get.json"`

### Impact

| Scenario | Files Removed | Dedup Rate |
|----------|--------------|------------|
| Exact duplicates only | ~51,000 | 18% |
| + Version-normalized (treat api-version as illustrative) | ~170,000 | **60%** |

---

## Design 3: Static Service Layer

### Purpose

A CI-generated artifact layer that:
- Reconstructs the folder structure partners expect
- Materializes deduplicated examples into full version folders
- Generates legacy `readme.md` for backward compatibility
- Injects correct api-version values into examples
- Provides a queryable index of all services and versions

### Why a Service Layer — Future Benefits

Introducing a defined API between the source repo and consumers provides two critical long-term advantages:

**1. Stable contract — we don't break consumers**

Today, consumers depend on the raw repo file layout. Any structural change (folder renames, deduplication, format migration) risks breaking downstream pipelines. With a service layer:
- The API is the contract. As long as endpoints return the expected data, the source can evolve freely.
- Source repo refactoring (e.g., removing readme.md, changing example layout, migrating swagger → TypeSpec) becomes an internal implementation detail.
- Versioning the API (v1, v2) gives a controlled deprecation path for breaking changes.

**2. Easy to add new artifacts without source changes**

The service layer can compute and serve new derived artifacts without touching the source repo:
- **OpenAPI 3.x output** — compile TypeSpec or convert Swagger 2.0 → OpenAPI 3.1 and serve it alongside the original
- **Bundled/resolved specs** — single-file OpenAPI with all `$ref` inlined
- **SDK-specific views** — filtered specs per language/SDK configuration
- **Diff reports** — computed breaking changes between versions
- **Documentation fragments** — pre-rendered operation summaries, parameter tables
- **Alternative formats** — gRPC protobuf, AsyncAPI, or any future format

The source repo stays lean (only the authoritative TypeSpec/Swagger), while the service layer produces whatever consumers need — today and in the future.

### Architecture

```
┌────────────────────────────────────────────┐
│   Source Repo (azure-rest-api-specs)       │
│                                            │
│  versions.yaml  +  TypeSpec/Swagger        │
│  + shared examples (symlinks + overrides)  │
└──────────────────┬─────────────────────────┘
                   │  CI Build (on merge to main)
                   ▼
┌────────────────────────────────────────────┐
│   Computed Artifacts                       │
│                                            │
│  /index.json              ← global catalog │
│  /services/{service}/                      │
│    manifest.json          ← all versions   │
│    readme.md              ← generated      │
│    {version}/                              │
│      openapi.json         ← full spec     │
│      examples/            ← materialized  │
└──────────────────┬─────────────────────────┘
                   │
                   ▼
┌────────────────────────────────────────────┐
│   Consumers                                │
│  • SDK generators (AutoRest / TypeSpec)    │
│  • Documentation pipelines                 │
│  • Azure Portal                            │
│  • API reviewers                           │
└────────────────────────────────────────────┘
```

### Key Artifacts

| Artifact | Contents |
|----------|----------|
| `/index.json` | Global service catalog — all services, their versions, links to manifests |
| `/services/{svc}/manifest.json` | Per-service: version list, package names per language, status, links to specs |
| `/services/{svc}/readme.md` | Generated AutoRest config (backward compat for legacy consumers) |
| `/services/{svc}/{version}/openapi.json` | Fully resolved OpenAPI spec |
| `/services/{svc}/{version}/examples/` | Fully materialized examples (dedup resolved, api-version injected) |

### Static vs Dynamic

| Approach | Pros | Cons |
|----------|------|------|
| **Static (CI-generated)** | Simple; cacheable; no runtime infra; works offline; versioned with git tags | Stale until next build; storage cost |
| **Dynamic (REST API)** | Always fresh; supports queries | Requires hosting/ops; latency; more complex |

**Recommendation:** Start with static generation. The build runs on merge to `main` and publishes to Azure Blob Storage (or GitHub Pages). A thin REST API can be added later if query patterns demand it.

### Build Process

1. Discover all `versions.yaml` files in the repo
2. For each service:
   - Parse version list
   - For TypeSpec versions: compile TypeSpec → OpenAPI (if not already generated)
   - For swagger versions: resolve input-file references
   - Resolve symlinks and materialize full example sets per version
   - Inject correct api-version values into example bodies
   - Generate `readme.md` from template + versions.yaml data
   - Produce `manifest.json`
3. Generate global `index.json`
4. Publish all artifacts to hosting (blob storage, CDN, or GitHub Pages)
5. Optionally tag the artifact set with a version/timestamp

---

---

## Open Questions

| # | Question | Options | Impact |
|---|----------|---------|--------|
| 1 | **TypeSpec version auto-detection** | Auto from `@versioned` enum vs. always manual in versions.yaml | Affects authoring burden |
| 2 | **Hosting for static artifacts** | GitHub Pages / Azure Blob / npm package | Affects availability, cost, auth |
| 3 | **versions.yaml granularity** | One per RP namespace vs. one per sub-service | Must match current readme.md granularity |
| 4 | **Example identity** | Byte-identical only vs. version-normalized | Determines 18% vs 60% dedup rate |
| 5 | **api-version in examples** | Canonical value (latest) vs. version-specific injection | Affects dedup ceiling |
| 6 | **Migration velocity** | All-at-once (scripted) vs. service-by-service opt-in | Affects risk and partner communication |
| 7 | **Cross stable/preview references** | Can a preview version $ref an example from a stable version (or vice versa)? | Affects $ref path structure |

---

## Appendix: Research Data

### Methodology

- Sampled 30 randomly-selected services from the 530 services with versioned examples
- Compared example files with the same filename across different API version folders
- "Exact duplicate" = byte-identical MD5 hash
- "Version-only diff" = identical after normalizing date patterns (`YYYY-MM-DD(-preview)?`) to a constant

### Raw Results

```
Total services with versioned examples: 530
Sample size: 30 services, 9,706 example files

Exact byte-identical duplicates:     1,756 (18.1%)
Version-only-diff duplicates:        4,091 (42.1%)
Combined removable:                  5,847 (60.2%)
Files that would remain:             3,859 (39.8%)

Extrapolated to full repo (~282K files):
  Exact-only removable:              ~51,000 files
  Version-normalized removable:      ~119,000 files
  Total removable:                   ~170,000 files
  Remaining:                         ~112,000 files
```
