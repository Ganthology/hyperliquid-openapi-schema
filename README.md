# hyperliquid-openapi-schema

OpenAPI Schema for Hyperliquid API

The goal/purpose of this schema is to act as a reference for Hyperliquid developers

To be use to validate against their sdk implementations

This repository contains a consolidated, valid OpenAPI 3.1 specification for Hyperliquid. It passes Redocly's recommended lint and is suitable for code generation.

Primary spec: `openapi.yaml`

Preview UI: `docs/index.html` (Swagger UI)

Lint/Preview commands are provided via `Makefile`.

### Quickstart (macOS)

Prerequisites:
- Node.js and npm (recommended via Homebrew):
  - `brew install node`
- Python 3 (for serving the Swagger UI page):
  - `python3 --version` (installed on most macOS). If missing: `brew install python`

Commands:
- Lint the spec (uses Redocly via npx):
  ```bash
  make lint
  ```
- Build a Redoc preview HTML (writes to `docs/redoc.html`):
  ```bash
  make preview
  open docs/redoc.html   # macOS convenience to open in browser
  ```
- Serve Swagger UI (serves `docs/` as root, open `http://localhost:8080/`):
  ```bash
  make serve-docs
  ```

Notes:
- `make lint` will install and run `@redocly/cli` transiently via `npx`; no global install required.
- Swagger UI page at `docs/index.html` loads `openapi.yaml` from the repository root.

## Roadmap

- [x] Cleanup to be valid OpenAPI schema
- [x] Create a Swagger UI
- [ ] Update missing schemas
