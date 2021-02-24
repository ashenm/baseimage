#!/usr/bin/env sh
# Deploy Image to hub.docker.com

set -e

# authenticate
echo "${DOCKER_PASSWORD}" \
  | docker login --username "${DOCKER_USERNAME}" --password-stdin

# deploy build image
docker push "${REPOSITORY_SLUG:-ashenm/baseimage}:${REPOSITORY_BRANCH:-alpha}"
