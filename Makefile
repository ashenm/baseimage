default:
	$(MAKE) build
	$(MAKE) build-dev

build:
	./scripts/build.sh

build-dev:
	./scripts/build.sh --tag dev-local

run:
	./scripts/run.sh --tag latest-local

run-dev:
	./scritps/run.sh --tag dev-local

purge:
	./scripts/clean.sh --all

clean:
	./scripts/clean.sh

