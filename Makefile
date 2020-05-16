-include $(shell curl -sSL -o .build-harness "https://raw.githubusercontent.com/mintel/build-harness/master/templates/Makefile.build-harness"; echo .build-harness)

init: bh/init
.PHONY: init

export SERVICE_NAME = charliemathews
NODE_MODULES = frontend/node_modules

$(NODE_MODULES):
	@cd frontend && yarn install --pure-lockfile --non-interactive

frontend/yarn.lock:
	set -ex \
		&& ( \
			cd frontend \
			&& yarn \
		)

delete-lock:
	rm frontend/yarn.lock
.PHONY: delete-lock

lock: delete-lock frontend/yarn.lock
.PHONY: lock

frontend: frontend/yarn.lock $(NODE_MODULES)
	set -ex \
		&& ( \
			cd frontend \
			&& yarn run build:prod \
			&& yarn autoclean \
		)
.PHONY: frontend


frontend-watch: frontend/yarn.lock $(NODE_MODULES)
	set -ex \
		&& ( \
			cd frontend \
			&& yarn run build:watch \
			&& yarn autoclean \
		)
.PHONY: frontend

lint: python/lint
.PHONY: lint

fmt: python/fmt
.PHONY: fmt

test:
.PHONY: test

clean: bh/clean
	@exit 0
.PHONY: clean

.PHONY: run
run:
	@bundler install
	@bundle exec jekyll serve
