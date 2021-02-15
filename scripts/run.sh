#!/usr/bin/env sh
# Spawn a Docker Container

exec docker run --rm --interactive --tty "${TRAVIS_REPO_SLUG:-ashenm/baseimage}:${TRAVIS_BRANCH:-alpha}" bash --login
