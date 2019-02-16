#!/usr/bin/env sh
# Assess Build Image

set -e

# docker images test suite
git clone --depth 1 https://github.com/docker-library/official-images.git ~/official-images

# assess image
~/official-images/test/run.sh -t debian-apt-get -t gcc-c-hello-world -t gcc-cpp-hello-world "$TRAVIS_REPO_SLUG"

