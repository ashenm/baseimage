#!/usr/bin/env sh
# Build Docker Image

docker build --tag "$TRAVIS_REPO_SLUG" .

