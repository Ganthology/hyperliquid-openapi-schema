.PHONY: lint preview serve-docs

# Lint the OpenAPI 3.1 spec using Redocly CLI without installing locally
lint:
	npx @redocly/cli@latest lint openapi.yaml

# Build a Redoc HTML preview into docs/redoc.html
preview:
	npx @redocly/cli@latest build-docs openapi.yaml -o docs/redoc.html

# Serve the static Swagger UI under docs/ and load root openapi.yaml
serve-docs:
	python3 -m http.server 8080 -d docs
