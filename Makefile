DOCKER ?= docker
CONTAINER_USER ?= $(shell id -u):$(shell id -g)

scaffold:
	$(DOCKER) run \
	  --volume .:/project \
	  --user $(CONTAINER_USER) \
	  --interactive --tty --rm \
	  --pull always \
	  ghcr.io/phpyh/scaffolder:latest \
	  --package-vendor-default typhoon \
	  --package-project-default '$(shell basename $$(pwd))' \
	  --php-constraint-default '^8.2' \
	  --authors-default '[{"name":"Valentin Udaltsov","email":"udaltsov.valentin@gmail.com"},{"name":"Andrey Klimenko","email":"klimichkartorgnusov@gmail.com"},{"name":"Typhoon Team","homepage":"https:\/\/github.com\/orgs\/typhoon-php\/people"}]' \
	  --copyright-holder-default 'Valentin Udaltsov'
	git add --all 2>/dev/null || true
.PHONY: scaffold

.DEFAULT_GOAL := scaffold
