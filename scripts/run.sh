#!/usr/bin/env sh
# Spawn a Docker Container

set -e

# image label
BUILD_TAG=latest-local
BUILD_IMAGE=ashenm/baseimage

# override tag if specified
test "${1}" = "-t" \
  -o "${1}" = "--tag" \
    && BUILD_TAG="${2:?Invalid TAG}"

# run container
exec docker run --rm --interactive --tty "${BUILD_IMAGE}:${BUILD_TAG}" bash --login

