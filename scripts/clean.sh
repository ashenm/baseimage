#!/usr/bin/env sh
# Remove Docker Images

set -e

# handle image selection
test "$1" = "-a" \
  -o "$1" = "--all" && \
    TRAVIS_BRANCH="*"

# remove all selected images
docker images --all --filter reference="${TRAVIS_REPO_SLUG:-ashenm/baseimage}:${TRAVIS_BRANCH:-developer-alpha}" --format {{.ID}} | xargs -r docker rmi --force
