#!/usr/bin/env sh
# Build Docker Image

exec docker build --tag "${TRAVIS_REPO_SLUG:-ashenm/baseimage}:${TRAVIS_BRANCH:-latest-alpha}" "$@" .
