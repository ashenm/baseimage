#!/usr/bin/env sh
# Build Docker Image

exec docker build --no-cache --tag "${TRAVIS_REPO_SLUG:-ashenm/baseimage}:${TRAVIS_BRANCH:-latest-alpha}" .
