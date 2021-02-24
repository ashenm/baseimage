#!/usr/bin/env sh
# Build Docker Image

exec docker build --no-cache --tag "${REPOSITORY_SLUG:-ashenm/baseimage}:${REPOSITORY_BRANCH:-alpha}" .
