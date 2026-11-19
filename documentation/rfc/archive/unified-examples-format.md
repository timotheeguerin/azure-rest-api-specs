# RFC: Unified Examples File Format

- **Status**: Draft
- **Authors**: TBD
- **Created**: 2026-06-03

## 1. Motivation

### Current State

Azure REST API specifications use `x-ms-examples` to reference JSON example files. Each operation can have multiple examples, and each API version gets its own copy of every example file.

**Scale of the problem**:

- 281,000+ individual JSON example files across the repository
- A single service like Compute has 9,400+ example files
- Examples are duplicated across every API version, often with trivial differences (e.g., only the `api-version` parameter changes)
- The Maps `GetAccount.json` example exists in 13 separate copies across versions, with changes limited to the api-version string, a date, and one added property

### Current Format

```
specification/maps/resource-manager/Microsoft.Maps/Maps/
├── stable/2021-02-01/examples/
│   ├── GetAccount.json
│   ├── CreateAccount.json
│   └── ...
├── stable/2023-06-01/examples/
│   ├── GetAccount.json        ← 95% identical to 2021-02-01 version
│   ├── CreateAccount.json
│   └── ...
└── preview/2024-01-01-preview/examples/
    ├── GetAccount.json        ← 95% identical again
    └── ...
```

Each JSON file:

```json
{
  "parameters": {
    "api-version": "2021-02-01",
    "subscriptionId": "21a9967a-e8a9-4656-a70b-96ff1c4d05a0",
    "resourceGroupName": "myResourceGroup",
    "accountName": "myMapsAccount"
  },
  "responses": {
    "200": {
      "body": { ... }
    }
  }
}
```

## 2. Goals

1. **Single source of truth** — One file (or small set of files) per service holds all examples for all versions
2. **Eliminate duplication** — An example is written once; version-specific variations are recorded only when they differ
3. **Readability first** — YAML format with focus on clarity; a human should be able to read an example and understand the API interaction immediately
4. **Version-aware** — The format tracks which versions an example applies to, without requiring a full copy per version
5. **(Optional) Decouple from operationId** — Identify operations in a way that works for both TypeSpec and legacy Swagger
6. **Flexible file organization** — Single file for simple services, multi-file for complex services
7. **Concrete values** — Use real-looking data with limited placeholder support for version-dependent values

### Non-Goals

- Backward compatibility with `x-ms-examples` JSON format (tooling will handle migration)

## 3. Proposed Format

### 3.1 File Location

Examples live alongside the TypeSpec or Swagger project at a well-known path:

```
specification/<service>/<plane>/<namespace>/
├── main.tsp
├── tspconfig.yaml
└── examples.yaml          ← single-file (most services)
```

Or for complex services with multi-file:

```
specification/compute/resource-manager/Microsoft.Compute/
├── main.tsp
├── tspconfig.yaml
└── examples/
    ├── virtual-machines.yaml
    ├── disks.yaml
    ├── galleries.yaml
    └── networking.yaml
```

The file(s) can also be named `examples/*.yaml` when using a directory. The grouping is purely organizational — tooling discovers all `*.yaml` files in the examples directory.

### 3.2 Top-Level Structure

```yaml
# examples.yaml
$schema: https://raw.githubusercontent.com/Azure/azure-rest-api-specs/main/schemas/examples.schema.yaml

# Optional metadata
title: Microsoft.Maps Account Management Examples
description: Examples for Maps account CRUD operations

# Examples grouped by operation
<operation-key>:
  - <example>
  - <example>
<operation-key>:
  - <example>
```

### 3.3 Operation Identification

Operations need a stable, readable key in the YAML file. We define a primary approach and two alternatives. Tooling MUST support the primary approach; alternatives MAY be supported for convenience.

#### Primary: TypeSpec Operation FQN

For TypeSpec-authored services, the **fully-qualified operation name** using the interface/resource name and operation name is the canonical identifier:

```yaml
Accounts.get:
  - ...
Accounts.createOrUpdate:
  - ...
Accounts.delete:
  - ...
Accounts.listByResourceGroup:
  - ...
Creators.create:
  - ...
```

This uses the TypeSpec interface name (or resource name) and the operation name separated by a dot. It's concise, readable, and directly maps to the TypeSpec source.

**Advantages**:

- Most readable and concise option
- Directly corresponds to TypeSpec source code
- Stable across versions (operation names rarely change)
- Natural grouping by resource

**Considerations**:

- Only works natively for TypeSpec-authored services
- Requires the TypeSpec compilation context to resolve
- For legacy Swagger services, a mapping of operationId → FQN could be generated (e.g., `Accounts_Get` → `Accounts.get`), allowing non-TypeSpec services to adopt this format without requiring a full TypeSpec migration

**Generated swagger reference**:

Tooling must resolve the FQN to the corresponding path+method in the OpenAPI spec. This requires TypeSpec compilation metadata to map `Accounts.get` → `GET /subscriptions/{subscriptionId}/.../accounts/{accountName}`. Once resolved, tooling emits a `$ref` pointing into the YAML examples file using a JSON pointer-like fragment:

```json
"x-ms-examples": {
  "Get Account": {
    "$ref": "./examples.yaml#/Accounts.get/0"
  }
}
```

**What's needed**: A resolution step that uses the TypeSpec compiler output (or a pre-built mapping file) to associate FQNs with their swagger path+method. This adds a build-time dependency on TypeSpec compilation context.

#### Alternative A: OperationId

All services already have operationIds, making this the most compatible solution today. It provides the easiest migration path from the current `x-ms-examples` format.

```yaml
Accounts_Get:
  - ...
Accounts_CreateOrUpdate:
  - ...
Accounts_Delete:
  - ...
```

**Advantages**:

- Works for both TypeSpec and Swagger services — every service already has operationIds
- Familiar to existing API authors
- Easy to migrate from current format (direct mapping)

**Considerations**:

- OperationId conflicts can occur (e.g., when multiple API versions define the same operationId for different operations), requiring authors to disambiguate explicitly — this is not ideal for authoring ergonomics
- This is the primary reason to explore moving toward the TypeSpec FQN as the preferred approach long-term, while keeping operationId as a supported fallback

**Generated swagger reference**:

The operationId directly matches the operation in swagger, so tooling can locate the correct path+method by scanning the OpenAPI spec for the matching operationId. It then emits a `$ref` pointing into the YAML examples file:

```json
"x-ms-examples": {
  "Get Account": {
    "$ref": "./examples.yaml#/Accounts_Get/0"
  }
}
```

**What's needed**: A simple lookup — scan the swagger for `operationId: "Accounts_Get"` and place the `x-ms-examples` reference there. This is straightforward and requires no additional compilation context.

#### Alternative B: HTTP Method + Path Pattern

For maximum universality (especially for services without TypeSpec or inconsistent operationIds), the HTTP method and path template can be used:

```yaml
"GET /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Maps/accounts/{accountName}":
  - ...
"PUT /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Maps/accounts/{accountName}":
  - ...
```

A shorter form for ARM resources where the subscription/resourceGroup prefix is implicit MAY be supported:

```yaml
"GET Microsoft.Maps/accounts/{accountName}":
  - ...
```

**Advantages**:

- Works universally — no dependency on TypeSpec or operationId
- Unambiguous: the HTTP contract is the source of truth
- Self-documenting: you can see the exact endpoint

**Considerations**:

- Verbose, especially for deeply nested ARM paths
- Harder to read at a glance compared to FQN or operationId

**Generated swagger reference**:

The key in the examples file directly corresponds to the swagger path+method structure. Tooling can match the key to `paths[<path>].<method>` without any lookup and emit a `$ref` into the YAML:

```json
"x-ms-examples": {
  "Get Account": {
    "$ref": "./examples.yaml#/GET %2Fsubscriptions%2F{subscriptionId}%2F...%2Faccounts%2F{accountName}/0"
  }
}
```

**What's needed**: Nothing beyond string matching — the examples file key already encodes the exact location in the swagger. However, the `$ref` fragment becomes unwieldy due to URL-encoded paths, which is a usability downside of this approach.

#### Choosing a Single Style

A given examples file MUST use exactly one identification style. Mixing styles within a file is not allowed — this keeps files consistent and avoids ambiguity in tooling.

The recommended style is **TypeSpec Operation FQN** for new services. For legacy Swagger services that cannot adopt FQN, **operationId** is acceptable. The **HTTP method + path** style exists as a fallback but is not recommended for hand-authored files due to verbosity.

> **Backward compatibility**: Tooling MAY accept operationId keys even in FQN-style files during a transition period, to ease migration from existing examples. However, new files SHOULD NOT rely on this.

### 3.4 Example Entry Structure

Each example entry represents one complete API interaction: a request and its possible responses. Parameters are split by location (path, query, headers) for clarity.

```yaml
Accounts.createOrUpdate:
  - title: Create Gen1 Account
    description: Creates a Maps account with Gen1 SKU  # optional

    request:
      path:
        subscriptionId: 21a9967a-e8a9-4656-a70b-96ff1c4d05a0
        resourceGroupName: myResourceGroup
        accountName: myMapsAccount
      body:
        location: global
        sku:
          name: S0
        kind: Gen1
        tags:
          test: "true"
        properties:
          disableLocalAuth: false

    responses:
      200:
        body:
          id: /subscriptions/21a9967a-e8a9-4656-a70b-96ff1c4d05a0/resourceGroups/myResourceGroup/providers/Microsoft.Maps/accounts/myMapsAccount
          name: myMapsAccount
          type: Microsoft.Maps/accounts
          kind: Gen1
          location: global
          tags:
            test: "true"
          sku:
            name: S0
            tier: Standard
          properties:
            uniqueId: b2e763e6-d6f3-4858-9e2b-7cf8df85c593
            provisioningState: Succeeded
            disableLocalAuth: false
      201:
        body:
          id: /subscriptions/21a9967a-e8a9-4656-a70b-96ff1c4d05a0/resourceGroups/myResourceGroup/providers/Microsoft.Maps/accounts/myMapsAccount
          name: myMapsAccount
          type: Microsoft.Maps/accounts
          kind: Gen1
          location: global
          # ... same structure as 200

  - title: Create Gen2 Account
    request:
      path:
        subscriptionId: 21a9967a-e8a9-4656-a70b-96ff1c4d05a0
        resourceGroupName: myResourceGroup
        accountName: myMapsAccount
      body:
        location: global
        sku:
          name: S1
        kind: Gen2
        properties:
          disableLocalAuth: true
    responses:
      200:
        body:
          # ...
```

The request is split into explicit sections by parameter location:

| Section | Purpose | When to include |
| ------- | ------- | --------------- |
| `path` | Path parameters (e.g., resourceGroupName, accountName) | Always (if the operation has path params) |
| `query` | Query parameters (e.g., `$top`, `$filter`) | Only when non-default query params are used |
| `headers` | Request headers (e.g., `If-Match`, `x-ms-client-request-id`) | Only for non-standard headers |
| `body` | Request body | Only for operations with a body (PUT, POST, PATCH) |

### 3.5 Versioning Model

The key innovation: examples are version-aware without full duplication. We explore two approaches.

#### Option A: `since` Marker

Each example can specify which versions it applies to:

```yaml
Accounts.get:
  - title: Get Account
    # No version marker = applies to all versions (the common case)
    request:
      path:
        subscriptionId: 21a9967a-e8a9-4656-a70b-96ff1c4d05a0
        resourceGroupName: myResourceGroup
        accountName: myMapsAccount
    responses:
      200:
        body:
          id: /subscriptions/.../myMapsAccount
          name: myMapsAccount
          type: Microsoft.Maps/accounts
          location: global
          properties:
            provisioningState: Succeeded
            disableLocalAuth: false

  - title: Get Account
    since: 2023-06-01   # This variant takes over from 2023-06-01 onward
    request:
      path:
        subscriptionId: 21a9967a-e8a9-4656-a70b-96ff1c4d05a0
        resourceGroupName: myResourceGroup
        accountName: myMapsAccount
    responses:
      200:
        body:
          id: /subscriptions/.../myMapsAccount
          name: myMapsAccount
          type: Microsoft.Maps/accounts
          location: eastus
          properties:
            provisioningState: Succeeded
            disableLocalAuth: false
            linkedResources: []   # new field added in 2023-06-01
```

**Rules**:

- An example with no `since` applies from the earliest version
- `since: <version>` means "this example supersedes any previous example with the same title for versions >= `<version>`"
- When multiple entries share the same title, the one with the highest `since` that is <= the target version wins

**Pros**:

- Simple mental model: write the base case, override only what changes
- Minimal duplication: only the changed variant needs to be written in full
- Easy to read: most examples have no version markers at all

**Cons**:

- When a response changes significantly, you still need the full new response body
- Ordering matters implicitly (later `since` overrides earlier)

#### Alternative: `@version` Suffix Convention

An earlier experiment ([PR #6](https://github.com/timotheeguerin/azure-rest-api-specs/pull/6)) explored a different approach where versioning is encoded in the operation key itself using a `@version` suffix with **`since` semantics** — the `@version` means "this variant applies from that version onward":

```yaml
# Unversioned key = the base example (applies from the earliest version)
Channels_CreateOrUpdate:
  parameters:
    subscriptionId: 5b4b650e-28b9-4790-b3ab-ddbd88d727c4
    resourceGroupName: examplerg
    channelName: exampleChannelName1
    # ...
  responses:
    200:
      body: # ...

# @version key = new variant that takes over from that version onward
Channels_CreateOrUpdate@2023-06-01-preview:
  parameters:
    subscriptionId: 8f6b6269-84f2-4d09-9e31-1127efcd1e40
    resourceGroupName: examplerg
    channelName: exampleChannelName1
    # ...
  responses:
    200:
      body: # ...
```

Using `since` semantics (rather than "this was the old version") means you only need to add a new entry going forward — you never have to patch older examples when something changes.

**Key differences from our proposal**:

| Aspect | This RFC (`since` field) | `@version` suffix |
| ------ | ------------------------ | ----------------- |
| Structure | Array of examples per operation, with `since` field | Flat map, version encoded in key name |
| Versioning semantics | `since` field on the entry | `@version` in the key name (same semantics) |
| Base example | Entry without `since` | The unversioned key |
| Multiple examples per operation | Multiple array entries with different titles | Not directly supported — one example per operation key |
| Parameter grouping | Split by location (`path`, `query`, `headers`, `body`) | Flat `parameters` map |
| Request/response nesting | Nested under `request:` / `responses:` | Top-level `parameters:` and `responses:` |

**Pros of the `@version` approach**:

- Extremely flat and simple — no nesting beyond parameters/responses
- Easy to reference from swagger via `$ref: "../../examples.yaml#/CaCertificates_Get"`
- Proven at scale: demonstrated 2,751 → 1 file, 42% size reduction for EventGrid
- Adding a new version variant is append-only — just add a new `@version` key

**Cons of the `@version` approach**:

- Only supports one example per operation (no "Create Gen1" vs "Create Gen2" variants)
- No explicit grouping of path/query/header parameters — flat `parameters` map is ambiguous about where values go
- Title/description metadata not supported per example
- Key ordering in the file matters for readability (versions should be chronological)

**Conclusion**: The `@version` approach is simpler and more compact, making it excellent for automated migration and tooling. This RFC's approach adds more structure (parameter splitting, titles, multiple examples per operation) at the cost of verbosity, making it better suited for hand-authoring and documentation generation.

### 3.6 Placeholder Support

Concrete values are used everywhere by default. Limited placeholders are supported for values that embed the API version:

```yaml
request:
  query:
    api-version: "{api-version}"  # resolved by tooling to the target version

responses:
  200:
    body:
      id: /subscriptions/21a9967a-e8a9-4656-a70b-96ff1c4d05a0/resourceGroups/myResourceGroup/providers/Microsoft.Maps/accounts/myMapsAccount
      # Real values everywhere else
```

Supported placeholders:

- `{api-version}` — replaced with the target API version string

> **Design Principle**: Placeholders are the exception, not the rule. They exist only when a value MUST change with the version. All other values use concrete, realistic data.

### 3.7 Response Headers

Examples may optionally include response headers:

```yaml
responses:
  202:
    headers:
      Location: https://management.azure.com/subscriptions/.../operationResults/abc123
      Retry-After: "30"
    body:
      status: InProgress
```

### 3.8 Multi-File Organization

For complex services, examples can be split across multiple files in an `examples/` directory:

```yaml
# examples/virtual-machines.yaml
$schema: https://raw.githubusercontent.com/Azure/azure-rest-api-specs/main/schemas/examples.schema.yaml
title: Virtual Machine Operations

"PUT .../virtualMachines/{vmName}":
  - title: Create a VM with managed disks
    # ...
```

**Rules**:

- Each file is self-contained (no cross-file references)
- An operation MUST NOT appear in multiple files (enforced by tooling)
- Files are named descriptively by operation area (not by operation name)
- Discovery: tooling reads all `*.yaml` files in the `examples/` directory

### 3.9 Handling `api-version` Parameter

The `api-version` parameter is **implicit** and NOT included in example parameters. It's determined by the version context in which the example is consumed.

```yaml
# Good — api-version is implicit
request:
  path:
    subscriptionId: 21a9967a-e8a9-4656-a70b-96ff1c4d05a0
    resourceGroupName: myResourceGroup
    accountName: myMapsAccount

# Not needed:
#   api-version: 2021-02-01   ← this is determined by context
```

This eliminates the most common source of trivial version differences.

## 4. Full Example

Here's a complete `examples.yaml` for a simplified Maps service:

```yaml
$schema: https://raw.githubusercontent.com/Azure/azure-rest-api-specs/main/schemas/examples.schema.yaml
title: Microsoft.Maps Account Management

Accounts.createOrUpdate:
  - title: Create Gen1 Account
    request:
      path:
        subscriptionId: 21a9967a-e8a9-4656-a70b-96ff1c4d05a0
        resourceGroupName: myResourceGroup
        accountName: myMapsAccount
      body:
        location: global
        sku:
          name: S0
        kind: Gen1
        tags:
          test: "true"
        properties:
          disableLocalAuth: false
    responses:
      200:
        body:
          id: /subscriptions/21a9967a-e8a9-4656-a70b-96ff1c4d05a0/resourceGroups/myResourceGroup/providers/Microsoft.Maps/accounts/myMapsAccount
          name: myMapsAccount
          type: Microsoft.Maps/accounts
          kind: Gen1
          location: global
          sku:
            name: S0
            tier: Standard
          properties:
            uniqueId: b2e763e6-d6f3-4858-9e2b-7cf8df85c593
            provisioningState: Succeeded
            disableLocalAuth: false
      201:
        body:
          id: /subscriptions/21a9967a-e8a9-4656-a70b-96ff1c4d05a0/resourceGroups/myResourceGroup/providers/Microsoft.Maps/accounts/myMapsAccount
          name: myMapsAccount
          type: Microsoft.Maps/accounts
          kind: Gen1
          location: global
          sku:
            name: S0
            tier: Standard
          properties:
            uniqueId: b2e763e6-d6f3-4858-9e2b-7cf8df85c593
            provisioningState: Succeeded
            disableLocalAuth: false

  - title: Create Gen2 Account
    since: 2021-02-01
    request:
      path:
        subscriptionId: 21a9967a-e8a9-4656-a70b-96ff1c4d05a0
        resourceGroupName: myResourceGroup
        accountName: myMapsAccount
      body:
        location: global
        sku:
          name: S1
        kind: Gen2
        properties:
          disableLocalAuth: true
    responses:
      200:
        body:
          id: /subscriptions/21a9967a-e8a9-4656-a70b-96ff1c4d05a0/resourceGroups/myResourceGroup/providers/Microsoft.Maps/accounts/myMapsAccount
          name: myMapsAccount
          type: Microsoft.Maps/accounts
          kind: Gen2
          location: global
          sku:
            name: S1
            tier: Standard
          properties:
            uniqueId: c3f864f7-e9g4-5969-0f3c-8dg9ef96d6a4
            provisioningState: Succeeded
            disableLocalAuth: true

Accounts.get:
  - title: Get Account
    request:
      path:
        subscriptionId: 21a9967a-e8a9-4656-a70b-96ff1c4d05a0
        resourceGroupName: myResourceGroup
        accountName: myMapsAccount
    responses:
      200:
        body:
          id: /subscriptions/21a9967a-e8a9-4656-a70b-96ff1c4d05a0/resourceGroups/myResourceGroup/providers/Microsoft.Maps/accounts/myMapsAccount
          name: myMapsAccount
          type: Microsoft.Maps/accounts
          location: global
          kind: Gen1
          sku:
            name: S0
            tier: Standard
          properties:
            uniqueId: b2e763e6-d6f3-4858-9e2b-7cf8df85c593
            provisioningState: Succeeded
            disableLocalAuth: false

  - title: Get Account
    since: 2023-06-01
    request:
      path:
        subscriptionId: 21a9967a-e8a9-4656-a70b-96ff1c4d05a0
        resourceGroupName: myResourceGroup
        accountName: myMapsAccount
    responses:
      200:
        body:
          id: /subscriptions/21a9967a-e8a9-4656-a70b-96ff1c4d05a0/resourceGroups/myResourceGroup/providers/Microsoft.Maps/accounts/myMapsAccount
          name: myMapsAccount
          type: Microsoft.Maps/accounts
          location: eastus
          kind: Gen1
          sku:
            name: S0
            tier: Standard
          properties:
            uniqueId: b2e763e6-d6f3-4858-9e2b-7cf8df85c593
            provisioningState: Succeeded
            disableLocalAuth: false
            linkedResources: []

Accounts.delete:
  - title: Delete Account
    request:
      path:
        subscriptionId: 21a9967a-e8a9-4656-a70b-96ff1c4d05a0
        resourceGroupName: myResourceGroup
        accountName: myMapsAccount
    responses:
      200: {}
      204: {}

Accounts.listByResourceGroup:
  - title: List Accounts By Resource Group
    request:
      path:
        subscriptionId: 21a9967a-e8a9-4656-a70b-96ff1c4d05a0
        resourceGroupName: myResourceGroup
    responses:
      200:
        body:
          value:
            - id: /subscriptions/21a9967a-e8a9-4656-a70b-96ff1c4d05a0/resourceGroups/myResourceGroup/providers/Microsoft.Maps/accounts/myMapsAccount
              name: myMapsAccount
              type: Microsoft.Maps/accounts
              location: global
              sku:
                name: S0
                tier: Standard
```

## 5. TypeSpec Schema

The following TypeSpec definitions formalize the structure of the examples file:

```tsp
namespace Azure.ApiExamples;

/** Root document structure for an examples file. */
/**
 * The examples file is a YAML document where the top-level keys are operation identifiers
 * mapping directly to arrays of examples. Optional metadata fields ($schema, title, description)
 * may appear at the top level alongside operation keys.
 *
 * Example structure:
 *   $schema: ...
 *   title: ...
 *   Accounts.get:
 *     - { title, request, responses }
 *   Accounts.createOrUpdate:
 *     - { title, request, responses }
 */

/** A single example representing one complete API interaction. */
model Example {
  /** Human-readable title for this example. Required. */
  title: string;

  /** Longer description of what this example demonstrates. */
  description?: string;

  /**
   * API version from which this example variant applies.
   * If omitted, the example applies from the earliest version.
   * Format: date-based version string (e.g., "2023-06-01" or "2024-01-01-preview")
   */
  since?: string;

  /** The request portion of the example. */
  request: ExampleRequest;

  /**
   * Map of HTTP status codes to response examples.
   * Keys are status code strings (e.g., "200", "201", "404").
   */
  responses: Record<ExampleResponse>;
}

/** Describes the request side of an example. */
model ExampleRequest {
  /**
   * Path parameters for the request.
   * Keys are parameter names as they appear in the path template.
   * The `api-version` parameter should NOT be included (it's implicit).
   */
  path?: Record<unknown>;

  /**
   * Query parameters for the request.
   * Keys are query parameter names (e.g., "$top", "$filter").
   */
  query?: Record<unknown>;

  /** Request headers (only include non-standard headers). */
  headers?: Record<string>;

  /**
   * Request body. Structure matches the operation's request schema.
   * Use concrete, realistic values.
   */
  body?: unknown;
}

/** Describes a single response variant for a status code. */
model ExampleResponse {
  /** Response body. Structure matches the operation's response schema. */
  body?: unknown;

  /** Response headers. */
  headers?: Record<string>;
}
```

## 6. Migration Strategy

### Phase 1: Tooling Development

- Build a converter that reads existing `x-ms-examples` JSON and produces the new YAML format
- Deduplication logic: compare examples across versions, emit `since` markers where differences exist
- Build a generator that produces `x-ms-examples` JSON from the new YAML format (round-trip)
- Validation tooling to ensure YAML examples match the OpenAPI/TypeSpec schema

### Phase 2: Migrate All Services

- Migrate every service to the new YAML format (may be split across multiple PRs)
- CI validates that regenerating the original `x-ms-examples` JSON from the new YAML produces identical output (round-trip correctness)
- Both formats coexist during this phase — the YAML is the source, JSON is generated

### Phase 3: Disable Old Tooling

- Once all services are migrated and CI confirms round-trip correctness, disable the old swagger-based example tooling
- New examples are authored exclusively in the YAML format

### Phase 4: Remove Old Files

- Remove the legacy `x-ms-examples` JSON files from the repository
- The YAML format is the sole source of truth; JSON is generated on demand by tooling

## 7. Tooling Considerations

### Consumers of Examples

1. **SDK test generation** — Generates test cases from examples
2. **Documentation** — REST API docs show examples for each operation
3. **API validation** — Ensures examples conform to the schema
4. **Try It** experiences — Portal/docs "Try It" buttons use example data

### Required Tooling

| Tool | Purpose |
| ---- | ------- |
| `examples-validate` | Validates YAML against schema and API spec |
| `examples-resolve` | Resolves an example for a specific API version (applies `since`/`until` logic) |
| `examples-migrate` | Converts existing JSON examples to new YAML format |
| `examples-generate-swagger` | Produces `x-ms-examples` JSON from YAML (for backward compat) |
| `examples-diff` | Shows what changed in an example between versions |

### Integration Points

- **TypeSpec compilation**: TypeSpec compiler plugin reads `examples.yaml` and emits `x-ms-examples` in generated OpenAPI
- **CI validation**: Ensures examples validate against the API schema for all applicable versions
- **PR review**: Tooling shows which operations gained/lost/changed examples

## 8. Open Questions

1. **Operation identification syntax** — Should we support both full path and short-form? What about TypeSpec operation names as aliases?
2. **Response body diffing** — When a response adds one field in a new version, must the entire response be rewritten? Or should we support partial overrides?
3. **Error responses** — Should error examples (4xx, 5xx) be included? Today they often aren't in `x-ms-examples`.
4. **LRO examples** — Long-running operations need multiple response snapshots (initial response, polling response, final response). How to represent this?
5. **Pagination examples** — Should we show `nextLink` handling with multiple pages?
6. **Data-plane services** — The path-based identification works well for ARM. How does it work for data-plane services with different URL structures?

## 9. Appendix: Comparison

| Aspect | Current (`x-ms-examples`) | Proposed (YAML) |
| ------ | ------------------------- | --------------- |
| Format | JSON | YAML |
| Files per operation | 1 file × N versions | 1 entry (with optional version variants) |
| Total files (Maps) | ~130+ | 1 |
| Total files (Compute) | ~9,400+ | ~4-6 |
| Version handling | Full copy per version | `since`/`until` markers |
| Operation identity | operationId reference | HTTP method + path |
| Comments | Not supported | Supported |
| api-version in data | Explicit parameter | Implicit (contextual) |
| Readability | Verbose JSON | Concise YAML |
