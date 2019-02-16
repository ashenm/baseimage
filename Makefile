default:
	$(MAKE) build
	$(MAKE) run

build:
	./scripts/build.sh

run:
	./scripts/run.sh

purge:
	./scripts/clean.sh --all

clean:
	./scripts/clean.sh

