#!/usr/bin/env sh
# Spawn a Docker Container

exec docker run --rm --interactive --tty "${REPOSITORY_SLUG:-ashenm/baseimage}:${REPOSITORY_BRANCH:-alpha}" bash --login
