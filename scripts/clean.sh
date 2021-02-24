#!/usr/bin/env sh
# Remove Docker Images

set -e

# handle image selection
test "$1" = "-a" \
  -o "$1" = "--all" && \
    REPOSITORY_BRANCH="*"

# remove all selected images
docker images --all --filter reference="${REPOSITORY_SLUG:-ashenm/baseimage}:${REPOSITORY_BRANCH:-alpha}" --format {{.ID}} | xargs -r docker rmi --force
