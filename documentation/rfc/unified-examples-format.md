# RFC: Unified Examples Format

- **Status**: Draft
- **Authors**: TBD
- **Created**: 2026-06-03
- **Updated**: 2026-07-06 (decision made: standalone YAML file; alternatives moved to Annex A)

> **Reading note**: This RFC previously evaluated two co-equal candidate formats
> (a standalone YAML file and a TypeSpec-first decorator). The decision is now
> made: **the format is a standalone YAML file per service.** The TypeSpec
> decorator and other rejected approaches are retained for reference in
> [Annex A](#annex-a-alternatives-considered). The pre-decision single-proposal
> document remains at [`archive/unified-examples-format.md`](./archive/unified-examples-format.md).

## 1. Motivation

### Current State

Azure REST API specifications use `x-ms-examples` to reference JSON example
files. Each operation can have multiple examples, and each API version gets its
own copy of every example file.

**Scale of the problem**:

- ~282,000 individual JSON example files across the repository; research shows
  ~60% (~170,000) are duplicates copied across versions with no or trivial
  differences.
- A single service like Compute has 9,400+ example files.
- The Maps `GetAccount.json` example exists in 13 separate copies across
  versions, differing only by the `api-version` string, a date, and one
  property.
- EventGrid alone has **2,968** JSON example files (~4.2 MB).

### Current Format

```
specification/maps/resource-manager/Microsoft.Maps/Maps/
├── stable/2021-02-01/examples/GetAccount.json
├── stable/2023-06-01/examples/GetAccount.json   ← 95% identical
└── preview/2024-01-01-preview/examples/GetAccount.json   ← 95% identical
```

Each JSON file repeats the full request/response, including the `api-version`
parameter that is the most common trivial difference between versions.

## 2. Goals

1. **Single source of truth** — one file (or small set) per service holds all
   examples for all versions.
2. **Eliminate duplication** — write an example once; record version-specific
   variations only when they differ.
3. **Readability first** — a reviewer should be able to read an example and
   understand the API interaction immediately. The primary goal of this proposal
   is to **improve PR-review and authoring experience**, so the format is
   optimized to stay clean, terse, and diff-friendly.
4. **Version-aware** — track which versions an example applies to without a full
   copy per version.
5. **Stable, source-friendly operation identity** that works across versions.
6. **Flexible organization** — single file for simple services, multi-file for
   complex services.
7. **Concrete values** with limited placeholder support for version-dependent
   values.

### Non-Goals

- Backward compatibility with the `x-ms-examples` JSON *format* (tooling handles
  migration; see §8).

## 3. The Format

### 3.1 Location

```
specification/<service>/<plane>/<namespace>/
├── main.tsp
├── tspconfig.yaml
└── examples.yaml          ← single file (most services)
```

Most services use a single `examples.yaml`. Large services **may split by
interface** into `examples/<Interface>.yaml` (e.g. `examples/Channels.yaml`),
one interface per file. The mapping is predictable — an operation lives in the
file for its interface — so a reviewer always knows where to find or add an
example, and diffs stay local.

**File-placement rules** (validator-enforced):

- An operation's **entire example set (all version variants) lives in a single
  file** — YAML has no cross-file key merge, so a key may not be split across
  files.
- An interface (and therefore each of its operations) appears in **exactly one
  file**.

### 3.2 Structure

```yaml
$schema: https://raw.githubusercontent.com/Azure/azure-rest-api-specs/main/schemas/examples.schema.yaml
$namespace: Microsoft.EventGrid

CaCertificates.createOrUpdate:
  - request:
      path:
        subscriptionId: 8f6b6269-84f2-4d09-9e31-1127efcd1e40
        resourceGroupName: examplerg
        namespaceName: exampleNamespace
        caCertificateName: exampleCaCertificate
      body:
        properties:
          description: This is a test certificate
          encodedCertificate: base64EncodePemFormattedCertificateString
    responses:
      200:
        body:
          properties:
            provisioningState: Succeeded
          name: exampleCaCertificate
          type: Microsoft.EventGrid/namespaces/caCertificates
```

The 99% case — a single example that simply evolves over versions — needs no
`title`, no id, and no nesting: it is just a list with a base entry plus later
entries carrying a `since` (§3.6).

**File-level metadata** uses `$`-prefixed keys so that **every bare top-level
key is unambiguously an operation**:

| Key | Meaning |
| --- | ------- |
| `$schema` | Schema URL — gives editors autocomplete and inline validation while authoring. |
| `$namespace` | Service namespace, prepended to each operation key to form the full identity (§3.4). Declared once, not repeated per key. |

A full, real-scale example is the EventGrid showcase at
[`examples-reference/examples-fqn.yaml`](../../specification/eventgrid/resource-manager/Microsoft.EventGrid/EventGrid/examples-reference/examples-fqn.yaml)
(231 operations, **one file**). Note: that showcase predates the `since`-quoting
(§3.6) and `{api-version}`-normalization (§3.5) rules, so its variant count is
higher than a compliant file's would be.

### 3.3 Why YAML (not JSON)

- It supports **comments**, which examples benefit from.
- It is **shorter and more readable** for hand-authoring and PR review than JSON.
- YAML is already used throughout the repo, and the OpenAPI ecosystem treats
  YAML as the standard authoring format.
- It allows **arbitrary string keys** natively (status codes, headers, query
  parameters, and map-shaped bodies), so the data reads exactly like the wire
  shape with no encoding tricks.

### 3.4 Operation Identity

Operations are identified by their **TypeSpec operation name relative to the
service namespace** — the interface and operation:

```yaml
$namespace: Microsoft.EventGrid
CaCertificates.createOrUpdate:   # ← full identity: Microsoft.EventGrid.CaCertificates.createOrUpdate
```

The **namespace is declared once** in `$namespace` and prepended by tooling to
form the fully-qualified identity used for Swagger linkage (§3.7). This keeps
every key short and readable while remaining globally unambiguous.

For legacy Swagger-only services, a generated `operationId → identity` mapping
lets them adopt the same identity without a full TypeSpec migration.

### 3.5 Request / Response Shape

Each example is one complete API interaction. The request is split by parameter
location; responses are keyed by status code.

| Section | Purpose | When to include |
| ------- | ------- | --------------- |
| `path` | Path parameters | When the operation has path params |
| `query` | Query parameters (`$top`, `$filter`, …) | Only for non-default query params |
| `headers` | Request headers (`If-Match`, …) | Only for non-standard headers |
| `body` | Request body | Only for operations with a body |

- **Status codes are bare integer keys** (`200:`, `404:`). An example is a
  single concrete interaction, so a concrete numeric code is always correct;
  range/`default` keys (`2XX`, `default`) are schema concepts and are **not
  permitted** in examples (validator-enforced). This keeps the responses block
  free of quotes and mixed key types.
- **`api-version` is implicit** and never written as a request parameter — it is
  resolved from the version context. This removes the most common trivial
  version difference.
- **`{api-version}` is the single supported placeholder.** Where a value must
  embed the target version — inside a `Location`/`Azure-AsyncOperation` header,
  a `nextLink`, or any URL in a body — write `{api-version}` instead of a literal
  version string. Tooling substitutes the target version on materialization.
  This is what lets one variant cover every version (see §3.6) instead of one
  near-duplicate per version.
- **Error responses (4xx/5xx)** are ordinary entries in the responses map and
  require no special mechanism.
- **Long-running operations (LRO)** include the initial status code (e.g. `202`
  with `Azure-AsyncOperation` / `Location` / `Retry-After` headers) alongside
  the terminal response.
- **Pagination** is shown with a `value` array and a `nextLink` URL (using
  `{api-version}`) on the first page.

### 3.6 Versioning Model

Examples are version-aware without full duplication via a **`since`** marker.

**The common case is a single example that evolves.** The list under an
operation key is, by default, **one example lineage**: a base entry (no `since`)
plus later entries that carry a `since` and restate the changed
request/response.

```yaml
CaCertificates.get:
  - request:
      path: { subscriptionId: ..., resourceGroupName: examplerg, namespaceName: exampleNamespace, caCertificateName: exampleCaCertificate }
    responses:
      200:
        body: { name: exampleCaCertificate, properties: { provisioningState: Succeeded } }
  - since: "2023-12-15-preview"
    request:
      path: { subscriptionId: ..., resourceGroupName: examplerg, namespaceName: exampleNamespace, caCertificateName: exampleCaCertificate }
    responses:
      200:
        body: { name: exampleCaCertificate, properties: { provisioningState: Succeeded, delegatedIdentityTokenExpirationTimeInUtc: "2023-10-12T23:06:43+00:00" } }
```

Resolution rules:

- An entry with no `since` applies from the earliest version.
- `since: "<version>"` means the variant applies for versions `>= <version>`.
- Within a lineage, the entry with the **greatest `since` that is `<=` the
  target version** wins.

**`title` is optional and only for disambiguation.** In the 99% single-example
case, omit it. Provide a `title` only when an operation genuinely has
**multiple distinct examples** (e.g. "Create with WebHook" vs "Create with
Queue"); entries sharing a `title` form one lineage. Untitled entries all belong
to the single default lineage.

Validator rules per lineage: **at most one entry without `since`** (the base),
and **`since` values are unique**.

**Version-string handling.** `since` values are **always quoted**
(`since: "2024-06-01"`) — unquoted date-like versions are parsed by YAML as date
objects, not strings. Each `since` **must be a version listed in the service's**
[`service.yaml`](./service-yaml.md) (validator-enforced), which is also the
**single source of ordering**. There is one linear version order (preview and
stable are entries in the same list); resolution does not special-case preview
vs. stable.

**No partial overrides.** A changed variant restates the **full** body — we
deliberately do not support patching a single field, so an example always reads
as a complete request/response without mentally applying a chain of diffs. Where
duplication becomes heavy, the answer is to **generate examples on demand**
rather than to add partial-override machinery.

### 3.7 Swagger Linkage — `x-id`

Generated Swagger will **no longer embed `x-ms-examples` `$ref` blocks**.
Instead, every operation carries an **`x-id`** extension whose value is the full
operation identity (`$namespace` + operation key):

```json
"get": {
  "operationId": "CaCertificates_Get",
  "x-id": "Microsoft.EventGrid.CaCertificates.get"
}
```

`x-id` is the **sole** link between a Swagger operation and its examples. Any
consumer (docs, SDK generators, validation, TCGC, …) joins a Swagger operation
to its examples by matching `x-id` to the example identity. This decouples
examples from the Swagger file and removes ~282K embedded `$ref` blocks.

## 4. Schema

The logical model below is expressed in TypeSpec for precision; it maps directly
onto the YAML shape (objects → maps, arrays → sequences). A JSON Schema is
published at the `$schema` URL for editor validation.

```tsp
namespace Azure.ApiExamples;

/** Top-level file: `$schema`/`$namespace` metadata plus one entry per operation,
    keyed by the interface-relative operation name (e.g. `CaCertificates.get`).
    Each operation maps to a list of variants (§3.6). */
// file: Record<Example[]>  +  $schema: string, $namespace: string

/** A single example variant representing one complete API interaction. */
model Example {
  /** Optional human-readable title. Omit for the single-example case; provide it
      only to disambiguate multiple distinct examples on the same operation. */
  title?: string;

  /** Longer description of what this example demonstrates. */
  description?: string;

  /** Quoted version from which this variant applies (must be a `service.yaml`
      version). Omit to apply from the earliest version. */
  since?: string;

  request: ExampleRequest;

  /** Responses keyed by integer status code (e.g. 200, 404). */
  responses: Record<ExampleResponse>;
}

model ExampleRequest {
  /** Path parameters. `api-version` is implicit and MUST NOT be included. */
  path?: Record<unknown>;
  /** Query parameters (e.g. `$top`, `$filter`). */
  query?: Record<unknown>;
  /** Request headers (e.g. `If-Match`). */
  headers?: Record<unknown>;
  /** Request body. Structure matches the operation's request schema. */
  body?: unknown;
}

model ExampleResponse {
  /** Response headers (e.g. `Location`, `Azure-AsyncOperation`). */
  headers?: Record<unknown>;
  /** Response body. Structure matches the operation's response schema. */
  body?: unknown;
}
```

Because YAML permits arbitrary string keys, status codes, headers, query
parameters, and map-shaped bodies (e.g. ARM `userAssignedIdentities` keyed by
resource id) are written as **native maps** — the data reads exactly like the
wire shape.

## 5. Migration Strategy

### Phase 1 — Tooling

- Converter that reads existing `x-ms-examples` JSON and produces `examples.yaml`,
  deduplicating across versions into `since` variants and **normalizing embedded
  version strings to `{api-version}`** so trivially-versioned variants collapse.
- Emitter support: emit `x-id` on every operation; (transitional) generate
  `x-ms-examples` JSON from the new format for consumers not yet updated.
- A validator (§6).

### Phase 2 — Migrate services

- **Scope decision (open)**: migrate *all* historical versions, or only from the
  TypeSpec-converted version forward? Because the Swagger toolchain is being
  retired, one option is to migrate only from the converted version forward and
  leave retired Swagger-only versions as-is. CI validates round-trip correctness
  for migrated versions.

### Phase 3 — Disable old tooling

- Once migrated and CI confirms round-trip correctness, disable the old
  Swagger-based example tooling; new examples are authored only in the new
  format.

### Phase 4 — Remove old files

- Remove legacy `x-ms-examples` JSON; the new format is the sole source of
  truth, with JSON generated on demand if still needed.

## 6. Tooling Considerations

### Consumers of examples

1. **SDK test generation** — generates test cases from examples.
2. **TCGC** — all language generators consume examples via TCGC, so **TCGC must
   adopt the new format**. Where a file path is still needed (doc tooling that
   maps a JSON example to a language sample), the mapping is done via `x-id`
   instead of an embedded `$ref`.
3. **Documentation** — REST API docs render examples per operation.
4. **API validation** — examples conform to the schema for each applicable
   version.
5. **"Try It"** — portal/docs use example data.

### Required tooling

| Tool | Purpose |
| ---- | ------- |
| `examples-validate` | Validate examples against the schema and API surface, enforcing the rules in §3 (integer status keys, quoted `since`, `since` ∈ `service.yaml`, one base + unique `since` per lineage, one-file-per-interface). **HTTP-centric**, so it starts standalone; it MAY move into the TypeSpec compiler/`http` library later. |
| `examples-resolve` | Resolve the applicable example for a target version (apply `since`, substitute `{api-version}`). |
| `examples-migrate` | Convert existing JSON examples to the new format, dedup + `{api-version}` normalization. |
| `examples-scaffold` | Generate faked initial examples from the API surface — **replacing OAV's faked-example generation**. |
| `examples-emit` | Emit `x-id` (and, transitionally, `x-ms-examples` JSON). |
| `examples-diff` | Show what changed in an example between versions. |

### Doc-team consumption (needs review)

How the documentation pipeline consumes examples (whether it relies on built-in
`$ref` resolution or a different mapping) needs Doc-team review, since `x-id`
replaces the embedded `$ref`.

## 7. Open Questions

1. **Migration scope** — all historical versions vs. from the converted version
   forward (§5 Phase 2).
2. **Doc-team pipeline** consumption of `x-id` (§6).
3. **Data-plane** services with non-ARM URL structures — confirm the
   interface-relative identity and `service.yaml` ordering cover all cases.

## 8. Appendix: Current vs Proposed

| Aspect | Current (`x-ms-examples`) | Proposed |
| ------ | ------------------------- | -------- |
| Format | JSON, per-version copies | Single YAML file per service |
| Files (EventGrid) | 2,968 | 1 |
| Version handling | Full copy per version | `since` variants |
| Operation identity | operationId `$ref` | Interface-relative key + `x-id` |
| api-version in data | Explicit | Implicit / `{api-version}` placeholder |
| Comments | Not supported | Supported |

---

## Annex A: Alternatives Considered

This annex records approaches that were evaluated and **not** chosen, so the main
proposal above stays focused. None of these are part of the accepted design.

### A.1 TypeSpec-first `@example` decorator

Examples could instead be expressed directly in TypeSpec via a new HTTP-centric
augment decorator, mirroring the same request/response shape:

```tsp
@@example(Microsoft.EventGrid.CaCertificates.createOrUpdate,
  #{
    title: "Create CA certificate",
    since: "2024-06-01-preview",
    request: #{
      path: #{ subscriptionId: "…", resourceGroupName: "examplerg", namespaceName: "exampleNamespace", caCertificateName: "exampleCaCertificate" },
      body: #{ properties: #{ description: "This is a test certificate", encodedCertificate: "…" } },
    },
    responses: #[
      #{ statusCode: 200, body: #{ name: "exampleCaCertificate" } },
      #{ statusCode: 201, body: #{ name: "exampleCaCertificate" } },
    ],
  });
```

**Pros**: examples live with the source; the operation reference is a real symbol
(rename-safe, no string to mistype); values can eventually be **type-checked**
against the operation's request/response models; `const` + spread let authors
factor out and canonicalize repeated values.

**Cons (why it was not chosen)**:

- The decorator can only apply to **TypeSpec-authored** operations —
  **retired / Swagger-only versions cannot be expressed this way**, so a YAML
  fallback would still be required.
- Non-TypeSpec consumers (some doc pipelines) still need an emitted intermediate
  format.
- **TypeSpec object values only allow identifier property keys.** Status codes,
  headers, query parameters, and **map bodies with arbitrary string keys** (e.g.
  ARM `userAssignedIdentities`) therefore cannot be written as native maps and
  must be encoded as **entry arrays** (`#[#{ key, value }]`), which reads less
  naturally than the raw JSON/YAML the chosen format keeps verbatim. This is a
  real constraint of the TypeSpec value system (verified against the v1.13
  compiler) and was the decisive factor against it.
- Requires building and shipping decorator + emitter support before anything
  works.

Two full EventGrid conversions of this approach were produced for evaluation and
remain in the repo for reference only (not wired into the build):
[`examples.tsp`](../../specification/eventgrid/resource-manager/Microsoft.EventGrid/EventGrid/examples.tsp)
(straight conversion, ~18k lines) and
[`examples-dedup.tsp`](../../specification/eventgrid/resource-manager/Microsoft.EventGrid/EventGrid/examples-dedup.tsp)
(shared data hoisted into ~107 semantically-named `const`s, ~15k lines). Their
value literals were validated against the TypeSpec v1.13 compiler.

The `const` + spread de-duplication demonstrated there is a property of the
**source representation only** — the emitted, `x-id`-linked output is always
fully expanded. Meaningful de-duplication depended on first canonicalizing values
(one subscription id, one canonical name per resource type, one timestamp per
role) so hoisted `const`s carried semantic names rather than numbered
placeholders.

### A.2 Comparison summary (YAML vs TypeSpec decorator)

| Axis | Chosen — YAML file | Rejected — TypeSpec decorator |
| ---- | ------------------ | ----------------------------- |
| Where examples live | Separate `examples.yaml` | In TypeSpec (`@@example`) |
| Operation identity | Interface-relative key + `x-id` | Real operation symbol |
| Type checking at author time | No (needs validator) | Possible via compiler |
| Legacy / retired Swagger-only versions | ✅ supported | ❌ not expressible |
| Non-TypeSpec / docs consumers | ✅ reads YAML directly | Needs emitted intermediate |
| Authoring without TypeSpec context | ✅ | ❌ |
| Arbitrary keys (status codes, headers, map bodies) | ✅ native string keys | ⚠️ must use entry arrays |
| Factor out repeated values | ⚠️ YAML anchors/aliases | ✅ `const` + spread |

The decisive reasons for YAML: it covers **retired/Swagger-only versions** the
decorator cannot express, it keeps **arbitrary-key data verbatim** (no entry-array
encoding), and it requires **no compiler/emitter work** to author and review.

### A.3 Rejected operation-identity schemes

| Alternative | Why rejected |
| ----------- | ------------ |
| **operationId** (`Accounts_Get`) | OperationIds can collide across versions and are an emitter artifact rather than source identity. Tooling MAY still accept operationId keys as a transitional migration aid. |
| **HTTP method + path** (`GET .../accounts/{name}`) | Verbose for nested ARM paths; produces unwieldy fragments; the path is implicit in TypeSpec, so an author has no intuitive way to hand-write it. |
| **Full FQN on every key** (`Microsoft.EventGrid.CaCertificates.get`) | Repeats the constant namespace on all ~231 keys — pure noise for the reader. Replaced by a single `$namespace` header + interface-relative keys (§3.4). |

### A.4 Rejected serialization / structural choices

| Alternative | Why rejected |
| ----------- | ------------ |
| **JSON instead of YAML** | No comments, more verbose, harder to review (§3.3). |
| **Quoted string status keys** (`"200":`) | Extra visual noise on the most-read block; integer keys suffice because ranges/`default` are disallowed in examples (§3.5). |
| **Explicit `name`/`id` per example lineage** | Unnecessary verbosity for the 99% single-example case; the optional `title` + default-lineage rule covers grouping without a mandatory field (§3.6). |
| **Nesting variants under a `variants:` key** | Extra structural level for the common single-example case; a flat list with `since` is terser and diffs just as cleanly (§3.6). |
| **Partial field overrides between versions** | Forces readers to mentally apply a diff chain; full restatement keeps each variant self-contained (§3.6). |
