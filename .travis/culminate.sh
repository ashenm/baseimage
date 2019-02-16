#!/usr/bin/env sh

set -e

# deploy ashenm/workspace
curl --fail --silent --show-error --request POST --output /dev/null \
  --header "Content-Type: application/json" --header "Accept: application/json" \
  --header "Travis-API-Version: 3" --header "Authorization: token $TRAVIS_API_TOKEN" \
  --data "{ \"request\": { \"branch\": \"master\", \"message\": \"Build to parity with commit "$TRAVIS_COMMIT" on "$TRAVIS_REPO_SLUG"\" } }" \
  --url "https://api.travis-ci.org/repo/ashenm%2Fworkspace/requests"

