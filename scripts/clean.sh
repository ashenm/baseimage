#!/usr/bin/env sh
# Remove Docker Images

set -e

# image metadata
BUILD_TARGET=ashenm/baseimage
BUILD_REFERENCE="ashenm/baseimage:*-local"

# remove only `*-local` tags
# unless explicitly specified
test "${1}" = "-a" \
  -o "${1}" = "--all" \
    && BUILD_REFERENCE="ashenm/baseimage"

# remove all selected images
docker images --all --filter reference="${BUILD_REFERENCE}" \
  | awk 'NR>1 { print $3 }' | xargs -r docker rmi

