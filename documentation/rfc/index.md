# RFC Index: Repository Structure Improvements

This directory contains RFCs for improving the structure of the `azure-rest-api-specs` repository.

## RFCs

| RFC | Status | Summary |
| --- | ------ | ------- |
| [Unified Examples Format](./unified-examples-format.md) | Draft | Replace 282K+ individual `x-ms-examples` JSON files with a unified YAML format per service |
| [Versions File](./versions-yaml.md) | Draft | Replace `readme.md` version metadata with a simple `versions.yaml` file |

## Context

The `azure-rest-api-specs` repository has grown to a point where two structural issues significantly impact maintainability, contributor experience, and CI performance:

1. **readme.md complexity** — Each service uses a bespoke AutoRest-format markdown file that conflates version metadata, code generation settings, and tooling configuration. These files are hard to maintain and parse programmatically.

2. **x-ms-examples bloat** — The repository contains ~282,000 example files. Research shows ~60% are duplicates (~170,000 files), copied across API versions with no or trivial differences.

These RFCs propose interconnected solutions that work together but can be adopted independently.
