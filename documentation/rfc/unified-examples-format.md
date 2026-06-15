# RFC: Unified Examples File Format

- **Status**: Draft — **decision pending** between two candidate formats (see §4)
- **Authors**: TBD
- **Created**: 2026-06-03
- **Updated**: 2026-06-15 (reflects design-meeting decisions)

> **Reading note**: This RFC was originally a single proposal. After the design
> meeting it became a **bake-off** between two co-equal candidate formats. The
> original single-proposal document is preserved for reference at
> [`archive/unified-examples-format.md`](./archive/unified-examples-format.md).

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
3. **Readability first** — a human should be able to read an example and
   understand the API interaction immediately.
4. **Version-aware** — track which versions an example applies to without a full
   copy per version.
5. **Stable, source-friendly operation identity** that works across versions.
6. **Flexible organization** — single file for simple services, multi-file for
   complex services.
7. **Concrete values** with limited placeholder support for version-dependent
   values.

### Non-Goals

- Backward compatibility with the `x-ms-examples` JSON *format* (tooling handles
  migration; see §10).

## 3. Shared Design (applies to both candidates)

The two candidate formats in §4 differ only in **where examples live and how
they are written**. Everything in this section is common to both.

### 3.1 Operation Identification — TypeSpec FQN (decided)

Operations are identified by their **TypeSpec fully-qualified operation name
(FQN)**, starting at and including the **service namespace**:

```
Microsoft.EventGrid.CaCertificates.createOrUpdate
└──── namespace ────┘└─ interface ─┘└─ operation ┘
```

- In the **YAML candidate (A)** the FQN is the top-level key.
- In the **decorator candidate (B)** the FQN is the augment-decorator target, so
  it is implicit in the reference itself.

For legacy Swagger-only services, a generated `operationId → FQN` mapping lets
them adopt the same identity without a full TypeSpec migration.

> The FQN **includes the namespace** (resolving a review question): it is not
> just the interface name. For ARM the namespace is the provider namespace
> (e.g. `Microsoft.EventGrid`).

#### Alternatives considered (rejected)

| Alternative | Why rejected |
| ----------- | ------------ |
| **operationId** (`Accounts_Get`) | OperationIds can collide across versions and are an emitter artifact rather than source identity. **Tooling MAY still accept operationId keys as a transitional migration aid**, but it is not the target. |
| **HTTP method + path** (`GET .../accounts/{name}`) | Verbose for nested ARM paths; produces unwieldy `$ref` fragments; and crucially **the path is implicit in TypeSpec** — a TypeSpec author has no intuitive way to hand-write the path for an operation, especially in management scenarios. |

### 3.2 Request / Response Shape

Each example is one complete API interaction. The request is split by parameter
location; responses are keyed by status code.

| Section | Purpose | When to include |
| ------- | ------- | --------------- |
| `path` | Path parameters | When the operation has path params |
| `query` | Query parameters (`$top`, `$filter`, …) | Only for non-default query params |
| `headers` | Request headers (`If-Match`, …) | Only for non-standard headers |
| `body` | Request body | Only for operations with a body |

- **`api-version` is implicit** and never written — it is resolved from the
  version context. This removes the most common trivial version difference.
- **Placeholders** are the exception, not the rule. The only supported
  placeholder is `{api-version}`, used where a value must embed the target
  version (e.g. inside a `Location` header URL).
- **Response headers** are supported per status code.
- **Error responses (4xx/5xx) are in scope** — they are ordinary entries in the
  responses map and require no special mechanism.
- **Long-running operations (LRO)** are represented by including the initial
  status code (e.g. `202` with `Azure-AsyncOperation` / `Location` /
  `Retry-After` headers) alongside the terminal response.
- **Pagination** is shown with a `value` array and a `nextLink` URL on the first
  page; consumers follow `nextLink` for subsequent pages.

### 3.3 Versioning Model

Examples are version-aware without full duplication via a **`since`** marker:

- An example with no `since` applies from the earliest version.
- `since: <version>` means the variant supersedes any earlier variant with the
  same title for versions `>= <version>`.
- When several variants share a title, the highest `since` that is `<=` the
  target version wins.

**No partial overrides (decided).** A changed variant always restates the
**full** body — we deliberately do *not* support patching a single field. This
keeps an example readable as a complete request/response without mentally
applying a chain of diffs. Where duplication becomes heavy, the answer is to
**generate examples on demand** rather than to add partial-override machinery.

**Version-string agnostic.** The model is not opinionated about the version
string format — date-based, version-number, or mixed schemes all work. Ordering
is taken from the service's [`service.yaml`](./service-yaml.md), not inferred
from the string, so data-plane services that do not use date-based versions are
supported.

### 3.4 Swagger Linkage / Rollout — `x-id` (decided)

Generated Swagger will **no longer embed `x-ms-examples` `$ref` blocks**.
Instead, every operation carries an **`x-id`** extension whose value is the
operation FQN:

```json
"get": {
  "operationId": "CaCertificates_Get",
  "x-id": "Microsoft.EventGrid.CaCertificates.get"
}
```

`x-id` is the **sole** link between a Swagger operation and the examples. Any
consumer (docs, SDK generators, validation, TCGC, …) joins a Swagger operation
to its examples by matching `x-id` to the example identity (the YAML key in
Candidate A, or the decorator target in Candidate B). This decouples examples
from the Swagger file and removes ~282K embedded `$ref` blocks.

## 4. The Two Candidate Formats

The meeting agreed to evaluate two formats as **co-equal candidates**. The
current lean is **TypeSpec-first (Candidate B)**, but the decision is **left
open** pending the trade-offs in §7.

- **Candidate A — Standalone YAML file** (§5)
- **Candidate B — TypeSpec-first decorator** (§6)

Both use the shared design from §3, so a service can move between them without
changing operation identity, versioning semantics, or the `x-id` rollout.

## 5. Candidate A — Standalone YAML File

### 5.1 Location

```
specification/<service>/<plane>/<namespace>/
├── main.tsp
├── tspconfig.yaml
└── examples.yaml          ← single file (most services)
```

Complex services may split into `examples/*.yaml`; tooling discovers all YAML
files in the directory. Each operation MUST appear in exactly one file.

### 5.2 Structure

```yaml
$schema: https://raw.githubusercontent.com/Azure/azure-rest-api-specs/main/schemas/examples.schema.yaml
title: Microsoft.EventGrid Examples

Microsoft.EventGrid.CaCertificates.createOrUpdate:
  - title: Create CA certificate
    request:
      path:
        subscriptionId: 8f6b6269-84f2-4d09-9e31-1127efcd1e40
        resourceGroupName: examplerg
        namespaceName: exampleNamespaceName1
        caCertificateName: exampleCACertificateName1
      body:
        properties:
          description: This is a test certificate
          encodedCertificate: base64EncodePemFormattedCertificateString
    responses:
      "200":
        body:
          properties:
            provisioningState: Succeeded
          name: exampleCACertificateName1
          type: Microsoft.EventGrid/namespaces/caCertificates
```

A full, real-scale example is the EventGrid showcase at
[`examples-reference/examples-fqn.yaml`](../../specification/eventgrid/resource-manager/Microsoft.EventGrid/EventGrid/examples-reference/examples-fqn.yaml)
(231 operations, 413 example entries, 182 `since` variants, **one file**).

### 5.3 Why YAML (not JSON)

YAML is chosen over JSON because (resolving a review question):

- It supports **comments**, which examples benefit from.
- It is **shorter and more readable** for hand-authoring than JSON.
- YAML is already used throughout the repo, and the OpenAPI ecosystem treats
  YAML as the standard authoring format.

### 5.4 Pros / Cons

- **Pros**: works for both TypeSpec and legacy Swagger services; no TypeSpec
  compilation needed to read/author; trivially diffable; one obvious file.
- **Cons**: a second artifact to keep in sync with the spec; values are not
  type-checked against the model at author time (needs a validation tool, §10).

## 6. Candidate B — TypeSpec-first Decorator

Examples are expressed directly in TypeSpec via a new **HTTP-centric example
decorator**, mirroring the same request/response shape as Candidate A so the two
are directly comparable.

### 6.1 The `@example` Decorator

```tsp
@@example(Microsoft.EventGrid.CaCertificates.createOrUpdate,
  #{
    title: "Create CA certificate",
    since: "2024-06-01-preview",          // optional; omit = from earliest version
    request: #{
      path: #{
        subscriptionId: "8f6b6269-84f2-4d09-9e31-1127efcd1e40",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespaceName1",
        caCertificateName: "exampleCACertificateName1",
      },
      body: #{
        properties: #{
          description: "This is a test certificate",
          encodedCertificate: "base64EncodePemFormattedCertificateString",
        },
      },
    },
    responses: #{
      "200": #{ body: #{ name: "exampleCACertificateName1" } },
      "201": #{ body: #{ name: "exampleCACertificateName1" } },
    },
  });
```

Using the **augment** form (`@@example`) keeps examples out of the operation
definitions, so example data can live in a dedicated file (e.g. `examples.tsp`)
without cluttering the API surface.

### 6.2 Versioning

A `since` field on the example object selects the variant for a target version —
identical semantics to Candidate A's `since`. Multiple variants are simply
multiple `@@example` applications on the same operation:

```tsp
@@example(Microsoft.EventGrid.Channels.createOrUpdate, #{ title: "Create", /* base */ });
@@example(Microsoft.EventGrid.Channels.createOrUpdate, #{ title: "Create", since: "2023-06-01-preview", /* updated */ });
```

> This addresses the meeting's hardest concern: versioning examples that are
> embedded in TypeSpec. Rather than relying on `@added`/value-level versioning
> decorators (which cannot version individual values), we reuse the same
> data-driven `since` marker, expressed as repeated augment decorators.

### 6.3 EventGrid Full Conversion (showcase)

The complete EventGrid example set has been converted to this decorator form as a
demonstration:
[`examples.tsp`](../../specification/eventgrid/resource-manager/Microsoft.EventGrid/EventGrid/examples.tsp)
— one file, 231 operations, 413 `@@example` applications, 182 `since` variants.
It is **demonstration only** (not wired into the build); the proposed `@example`
decorator is not yet implemented.

### 6.4 Pros / Cons

- **Pros**: examples live with the source; the operation reference is a real
  symbol (no string FQN to mistype; rename-safe); values can eventually be
  **type-checked** against the operation's request/response models by the
  compiler; the FQN is intrinsic so no separate key is needed.
- **Cons**: the decorator can only apply to **TypeSpec-authored** operations —
  **retired / Swagger-only versions cannot be expressed this way** and still need
  the YAML/generated-JSON path; non-TypeSpec consumers (e.g. some doc pipelines)
  still need an emitted intermediate format; requires building and shipping the
  decorator + emitter support.

## 7. Bake-off Comparison

| Axis | A — YAML file | B — TypeSpec decorator |
| ---- | ------------- | ---------------------- |
| Where examples live | Separate `examples.yaml` | In TypeSpec (`@@example`) |
| Operation identity | FQN as YAML key (string) | Real operation symbol |
| Type checking at author time | No (needs validator) | Possible via compiler |
| Versioning | `since` field | `since` field (repeated `@@example`) |
| Legacy / retired Swagger-only versions | ✅ supported | ❌ not expressible (needs A as fallback) |
| Non-TypeSpec / docs consumers | ✅ reads YAML directly | Needs emitted intermediate format |
| Authoring without TypeSpec context | ✅ | ❌ |
| Comments / annotations | ✅ (YAML) | ✅ (TypeSpec) |
| EventGrid scale | 1 file, 11,176 lines, 496 KB | 1 file, 17,155 lines, 632 KB |
| Original baseline (EventGrid) | 2,968 JSON files, ~4.2 MB | 2,968 JSON files, ~4.2 MB |

**Current lean**: TypeSpec-first (B), because the operation reference is a real
symbol and values can be compiler-checked. **Open**: B cannot express retired
Swagger-only versions, so A is still needed as the fallback for those — which is
the main reason the decision remains open. A likely outcome is **B for live
TypeSpec services + A for retired/Swagger-only versions**, but that is not yet
decided.

## 8. TypeSpec Schema

The example value object (shared by both candidates — it is the YAML document
model in A and the decorator argument type in B):

```tsp
namespace Azure.ApiExamples;

/** A single example representing one complete API interaction. */
model Example {
  /** Human-readable title. */
  title: string;

  /** Longer description of what this example demonstrates. */
  description?: string;

  /**
   * Version from which this variant applies. Omit to apply from the earliest
   * version. Ordering comes from the service's `service.yaml`.
   */
  since?: string;

  request: ExampleRequest;

  /** Map of status-code string (e.g. "200", "404") to response example. */
  responses: Record<ExampleResponse>;
}

model ExampleRequest {
  /** Path parameters. `api-version` is implicit and MUST NOT be included. */
  path?: Record<unknown>;
  /** Query parameters (e.g. "$top", "$filter"). */
  query?: Record<unknown>;
  /** Non-standard request headers. */
  headers?: Record<string>;
  /** Request body. Structure matches the operation's request schema. */
  body?: unknown;
}

model ExampleResponse {
  /** Response body. Structure matches the operation's response schema. */
  body?: unknown;
  /** Response headers. */
  headers?: Record<string>;
}

/** Candidate B: HTTP-centric example decorator (augmentable). */
extern dec example(target: Operation, example: Example);
```

## 9. Migration Strategy

### Phase 1 — Tooling

- Converter that reads existing `x-ms-examples` JSON and produces the chosen
  format (YAML and/or decorator), deduplicating across versions into `since`
  variants.
- Emitter support: emit `x-id` on every operation; (transitional) generate
  `x-ms-examples` JSON from the new format for consumers not yet updated.
- A validator (§10).

### Phase 2 — Migrate services

- **Scope decision (open)**: migrate *all* historical versions, or only from the
  TypeSpec-converted version forward? Because the Swagger toolchain is being
  retired, one option is to migrate only from the converted version and leave
  retired Swagger-only versions as-is (these are also the versions Candidate B
  cannot express). CI validates round-trip correctness for migrated versions.

### Phase 3 — Disable old tooling

- Once migrated and CI confirms round-trip correctness, disable the old
  Swagger-based example tooling; new examples are authored only in the new
  format.

### Phase 4 — Remove old files

- Remove legacy `x-ms-examples` JSON; the new format is the sole source of
  truth, with JSON generated on demand if still needed.

## 10. Tooling Considerations

### Consumers of examples

1. **SDK test generation** — generates test cases from examples.
2. **TCGC** — all language generators consume examples via TCGC, so **TCGC must
   adopt the new format** (parse it and surface real content). The only place
   that still needs a file path is doc tooling that maps a JSON example to a
   language sample; that mapping can be done via `x-id` (or a dedicated tool)
   instead of an embedded `$ref`.
3. **Documentation** — REST API docs render examples per operation.
4. **API validation** — examples conform to the schema for each applicable
   version.
5. **"Try It"** — portal/docs use example data.

### Required tooling

| Tool | Purpose |
| ---- | ------- |
| `examples-validate` | Validate examples against the schema and API surface. **HTTP-centric**, so it starts as a standalone (or `http`-library) tool; it MAY move into the TypeSpec compiler/`http` library later if that proves clean. |
| `examples-resolve` | Resolve the applicable example for a target version (apply `since`). |
| `examples-migrate` | Convert existing JSON examples to the new format. |
| `examples-scaffold` | Generate faked initial examples from the API surface — **replacing OAV's faked-example generation**. |
| `examples-emit` | Emit `x-id` (and, transitionally, `x-ms-examples` JSON). |
| `examples-diff` | Show what changed in an example between versions. |

### Doc-team consumption (needs review)

How the documentation pipeline consumes examples (whether it relies on built-in
`$ref` resolution or a different mapping) needs Doc-team review, since `x-id`
replaces the embedded `$ref`.

## 11. Open Questions

1. **Final A-vs-B decision**, and whether the outcome is "B for TypeSpec
   services + A for retired Swagger-only versions."
2. **Migration scope** — all historical versions vs. from the converted version
   forward (§9 Phase 2).
3. **Decorator authoring ergonomics** at scale (Candidate B) for services with
   many `since` variants.
4. **Doc-team pipeline** consumption of `x-id` (§10).
5. **Data-plane** services with non-ARM URL structures — confirm FQN identity and
   `service.yaml` ordering cover all cases.

## 12. Appendix: Current vs Proposed

| Aspect | Current (`x-ms-examples`) | Proposed |
| ------ | ------------------------- | -------- |
| Format | JSON, per-version copies | YAML file (A) or TypeSpec decorator (B) |
| Files (EventGrid) | 2,968 | 1 |
| Version handling | Full copy per version | `since` variants |
| Operation identity | operationId `$ref` | FQN via `x-id` |
| api-version in data | Explicit | Implicit (contextual) |
| Comments | Not supported | Supported |
