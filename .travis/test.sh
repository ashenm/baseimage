#!/usr/bin/env sh

set -e

git clone --depth 1 https://github.com/docker-library/official-images.git ~/official-images
~/official-images/test/run.sh -t debian-apt-get -t gcc-c-hello-world -t gcc-cpp-hello-world "$TRAVIS_REPO_SLUG"

