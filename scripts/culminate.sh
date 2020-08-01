#!/usr/bin/env sh
# Trigger Reverse Dependency Builds

set -e

# truncate commit hash
TRAVIS_COMMIT=`expr substr "$TRAVIS_COMMIT" 1 7`

# ashenm/workspace
curl --fail --silent --show-error --request POST --output /dev/null \
  --header "Content-Type: application/json" --header "Accept: application/json" \
  --header "Travis-API-Version: 3" --header "Authorization: token $TRAVIS_API_TOKEN" \
  --data "{ \"request\": { \"branch\": \"latest\", \"message\": \"Build to parity with commit "$TRAVIS_COMMIT" on "$TRAVIS_REPO_SLUG"\" } }" \
  --url "https://api.travis-ci.com/repo/ashenm%2Fworkspace/requests"
