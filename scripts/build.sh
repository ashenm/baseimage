#!/usr/bin/env sh
# Build Docker Image

set -e

# image metadata
BUILD_TAG=latest-local
BUILD_IMAGE=ashenm/baseimage

# scripts directory
SCRIPT_DIRECTORY="$(dirname "$(readlink -f "${BASH_SOURCE}")")"

# handle custom tag
test "${1}" = "-t" \
  -o "${1}" = "--tag" \
    && { BUILD_TAG="${2:?Invalid TAG}"; BUILD_CONTEXT=":${2%-local}"; }

# build image
docker build --no-cache --tag "${BUILD_IMAGE}:${BUILD_TAG}" "${BUILD_CONTEXT:-$(dirname "${SCRIPT_DIRECTORY}")}"

