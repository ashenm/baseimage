#!/usr/bin/env sh
# Deploy Image to hub.docker.com

set -e

# authenticate
echo "$DOCKER_PASSWORD" | docker login --username "$DOCKER_USERNAME" --password-stdin

# deploy :latest
docker push "$TRAVIS_REPO_SLUG"

# deploy :dev
docker push "$TRAVIS_REPO_SLUG:dev"

