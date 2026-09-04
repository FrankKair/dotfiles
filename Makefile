config: ## Symlink config files and clone neovim
	./install.sh

config-home: config ## Config + install home apps
	./bootstrap.sh --home

bootstrap: ## Install core tools
	./bootstrap.sh

uninstall: ## Revert to pre-install config
	./uninstall.sh

help: ## Show this help
	@grep -E '^[a-zA-Z0-9_-]+:.*##' $(MAKEFILE_LIST) | sort | \
		awk -F ':.*## ' '{printf "  \033[36m%-16s\033[0m %s\n", $$1, $$2}'

.PHONY: config config-home bootstrap uninstall help
.DEFAULT_GOAL := help
