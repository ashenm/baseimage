#!/usr/bin/env sh
# Build Docker Image

# :latest
docker build --tag "$TRAVIS_REPO_SLUG" .

# :dev
docker build --tag "$TRAVIS_REPO_SLUG:dev" :dev

