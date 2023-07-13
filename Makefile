default: project

install:
	@./scripts/install.sh $(env)

uninstall:
	@./scripts/uninstall.sh

install-templates:
	@./scripts/install-templates.sh

clean:
	@tuist clean

edit:
	@tuist edit --permanent
	@open Manifests.xcodeproj

fetch:
	@tuist fetch

project: fetch
	@tuist generate

project-no-open: fetch
	@tuist generate --no-open

lint:
# recursive
	@swift-format lint -r Projects
# in place, recursive, parallel
	@swift-format format -irp Projects

mocks:
	@./scripts/mocking.sh
	@make lint

ci: env:=ci

ci: install project-no-open
	@bundle exec fastlane ci

module:
ifdef name
	@tuist scaffold module --name $(name) --example true
else
	@echo "Please make sure to specify a module's name like below"
	@echo "👉 make module name=Foo"
endif

.PHONY: install uninstall install-templates clean edit fetch project project-no-open lint ci module
