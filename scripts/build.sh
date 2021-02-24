#!/usr/bin/env sh
# Build Docker Image

exec docker build --tag "${REPOSITORY_SLUG:-ashenm/baseimage}:${REPOSITORY_BRANCH:-alpha}" "$@" .
