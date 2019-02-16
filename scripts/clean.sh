#!/usr/bin/env sh
# Remove Docker Images

set -e

# image label
BUILD_TAG=dev
BUILD_TARGET=ashenm/baseimage

# remove only `dev` tag if
# not explicitly specified
test ! "$1" = "-a" \
  -a ! "$1" = "--all" \
    && BUILD_TARGET="${BUILD_TARGET}:${BUILD_TAG}"

# remove all `BUILD_TARGET` images
docker images --all "${BUILD_TARGET}" | awk 'NR>1 { print $3 }' | xargs -r docker rmi

