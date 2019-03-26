build:
	./scripts/build.sh

assess:
	./scripts/assess.sh

clean:
	./scripts/clean.sh

culminate:
	./scripts/culminate.sh

deploy:
	./scripts/deploy.sh

install:
	./scripts/install.sh

purge:
	./scripts/clean.sh --all

rebuild:
	./scripts/build.sh --no-cache

run:
	./scripts/run.sh
