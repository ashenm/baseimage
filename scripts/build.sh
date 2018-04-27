#!/usr/bin/env sh

# image tag
BUILD_TARGET=ashenm/baseimage

# scripts directory
SCRIPT_DIRECTORY="$(dirname "$(readlink -f "$BASH_SOURCE")")"

# build image
docker build --no-cache --tag "$BUILD_TARGET":dev "$(dirname "$SCRIPT_DIRECTORY")"
