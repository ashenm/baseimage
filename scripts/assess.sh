#!/usr/bin/env sh
# Assess Build Image

set -e

# docker images test suite
git clone --depth 1 https://github.com/docker-library/official-images.git /tmp/official-images

# assess image
/tmp/official-images/test/run.sh -c /tmp/official-images/test/config.sh -t debian-apt-get -t gcc-c-hello-world -t gcc-cpp-hello-world "${REPOSITORY_SLUG:-ashenm/baseimage}:${REPOSITORY_BRANCH:-alpha}"

# clean test suite files
rm -rf /tmp/official-images
