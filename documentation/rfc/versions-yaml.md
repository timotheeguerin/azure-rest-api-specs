# RFC: versions.yaml

- **Status**: Draft
- **Authors**: TBD
- **Created**: 2026-06-03

## 1. Motivation

### The readme.md Problem

Today, every service in the repository has a `readme.md` that serves as the entrypoint for AutoRest code generation. A typical `readme.md` contains:

- Client/package title
- API type (ARM or data-plane)
- Version "tags" mapping to input files
- Language-specific code generation settings
- Suppressions and validation rules
- Credential/auth configuration

**Problems**:

- The format is a non-standard markdown/YAML hybrid that only AutoRest understands
- Version metadata is buried in tag blocks — not queryable without parsing the full file
- Swagger-only services and TypeSpec services have different needs but share the same format
- Adding a new API version requires editing multiple sections of a complex file
- There is no schema or validation for the format

## 2. Proposal: versions.yaml

### Purpose

A simple, machine-readable file that declares all API versions for a service — replacing the version-metadata role of `readme.md`.

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
| -------- | ------------- |
| Service name | Folder path (e.g., `specification/compute/resource-manager/Microsoft.Compute/`) |
| Service type (ARM / data-plane) | Folder path (`resource-manager/` vs `data-plane/`) |
| Status (stable / preview) | Version string — contains `-preview` → preview; otherwise → stable |
| Source (typespec / swagger) | Presence of `input-files` field → swagger; absence → typespec (tooling resolves via `tspconfig.yaml` / `@versioned` enum) |

The principle is: **don't repeat information that's already encoded in the repo structure or derivable from conventions.**

### Design Decisions

| Decision | Rationale |
| -------- | --------- |
| Manually authored | Swagger versions can't be reliably auto-detected; keeps a single source of truth for "which versions exist." |
| Minimal fields | Only declare what can't be inferred. Service name, type, status, and source are all derivable from context. |
| `input-files` as the swagger marker | If present, the version is swagger-sourced and these are its spec files. If absent, tooling knows to look at TypeSpec compilation output. |
| No codegen settings | Code generation config belongs in `tspconfig.yaml` (TypeSpec) or language-specific config files — not mixed into version metadata. |
| Flat version list | Simple to parse; no "tag" indirection. Ordering is chronological. |
| YAML format | Human-readable, supports comments, already used for `tspconfig.yaml`. A JSON Schema will be provided for validation. |

### What versions.yaml Does NOT Replace

- Language-specific codegen settings → stay in `tspconfig.yaml` or dedicated config files
- Suppressions → stay in `tspconfig.yaml` or a dedicated suppressions file
- The `readme.md` file itself (during transition) → generated from `versions.yaml`

## 3. Migration Strategy

### Phase 1: Introduction

- `versions.yaml` introduced alongside `readme.md`
- Both are maintained; tooling reads `readme.md`
- Generator validates they stay in sync

### Phase 2: Tooling Migration

- Tooling migrates to read `versions.yaml` directly
- `readme.md` is generated from `versions.yaml`
- Manual edits to `readme.md` are blocked by CI

### Phase 3: Removal

- `readme.md` is no longer checked in
- Generated on-demand by the static service layer (if needed for legacy consumers)

## 4. Static Service Layer

### Purpose

A CI-generated artifact layer that:

- Reconstructs the folder structure partners expect
- Materializes deduplicated examples into full version folders
- Generates legacy `readme.md` for backward compatibility
- Injects correct `api-version` values into examples
- Provides a queryable index of all services and versions

### Why a Service Layer

Introducing a defined API between the source repo and consumers provides two critical long-term advantages:

**1. Stable contract — we don't break consumers**

Today, consumers depend on the raw repo file layout. Any structural change (folder renames, deduplication, format migration) risks breaking downstream pipelines. With a service layer:

- The API is the contract. As long as endpoints return the expected data, the source can evolve freely.
- Source repo refactoring (e.g., removing `readme.md`, changing example layout, migrating swagger → TypeSpec) becomes an internal implementation detail.
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
│  + deduplicated examples                   │
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
| -------- | -------- |
| `/index.json` | Global service catalog — all services, their versions, links to manifests |
| `/services/{svc}/manifest.json` | Per-service: version list, package names per language, status, links to specs |
| `/services/{svc}/readme.md` | Generated AutoRest config (backward compat for legacy consumers) |
| `/services/{svc}/{version}/openapi.json` | Fully resolved OpenAPI spec |
| `/services/{svc}/{version}/examples/` | Fully materialized examples (dedup resolved, api-version injected) |

### Static vs Dynamic

| Approach | Pros | Cons |
| -------- | ---- | ---- |
| Static (CI-generated) | Simple; cacheable; no runtime infra; works offline; versioned with git tags | Stale until next build; storage cost |
| Dynamic (REST API) | Always fresh; supports queries | Requires hosting/ops; latency; more complex |

**Recommendation**: Start with static generation. The build runs on merge to main and publishes to Azure Blob Storage (or GitHub Pages). A thin REST API can be added later if query patterns demand it.

### Build Process

1. Discover all `versions.yaml` files in the repo
2. For each service:
   - Parse version list
   - For TypeSpec versions: compile TypeSpec → OpenAPI (if not already generated)
   - For swagger versions: resolve `input-file` references
   - Resolve and materialize full example sets per version
   - Inject correct `api-version` values into example bodies
   - Generate `readme.md` from template + `versions.yaml` data
   - Produce `manifest.json`
3. Generate global `index.json`
4. Publish all artifacts to hosting (blob storage, CDN, or GitHub Pages)
5. Optionally tag the artifact set with a version/timestamp

## 5. Open Questions

| # | Question | Options | Impact |
| - | -------- | ------- | ------ |
| 1 | TypeSpec version auto-detection | Auto from `@versioned` enum vs. always manual in `versions.yaml` | Affects authoring burden |
| 2 | Hosting for static artifacts | GitHub Pages / Azure Blob / npm package | Affects availability, cost, auth |
| 3 | `versions.yaml` granularity | One per RP namespace vs. one per sub-service | Must match current `readme.md` granularity |
| 4 | Migration velocity | All-at-once (scripted) vs. service-by-service opt-in | Affects risk and partner communication |
| 5 | Cross stable/preview references | Can a preview version reference an example from a stable version (or vice versa)? | Affects example resolution |
