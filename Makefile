.PHONY: lint preview serve-docs

# Lint the OpenAPI 3.1 spec using Redocly CLI without installing locally
lint:
	npx @redocly/cli@latest lint openapi.yaml

# Build a Redoc HTML page at repository root as index.html
preview:
	npx @redocly/cli@latest build-docs openapi.yaml -o index.html

# Serve both Redoc (root index.html) and Swagger UI (/docs)
serve-docs:
	python3 -m http.server 8080 -d .
