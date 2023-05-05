default: help

.PHONY: help
help: # Show help for each of the Makefile recipes.
	@grep -E '^[a-zA-Z0-9 -]+:.*#'  Makefile | sort | while read -r l; do printf "\033[1;32m$$(echo $$l | cut -f 1 -d':')\033[00m:$$(echo $$l | cut -f 2- -d'#')\n"; done


.PHONY: setup
setup: # Setup the local development environment
	python3 -m venv .venv && \
	. .venv/bin/activate && \
	pip install --upgrade pip && \
	pip install -r requirements.txt

.PHONY: serve
serve: # Start the dev server
	@. .venv/bin/activate && mkdocs serve

.PHONY: build
build: # Build the website files
	@. .venv/bin/activate && mkdocs build

.PHONY: deploy
deploy: # Deploy website to gh-deploy branch
	@. .venv/bin/activate && mkdocs gh-deploy --force
