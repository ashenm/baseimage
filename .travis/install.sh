#!/usr/bin/env sh
# Configure Build Environment

set -e

# vimrc
curl --fail --silent --show-error --create-dirs --output etc/vim/vimrc.local \
    --url https://raw.githubusercontent.com/amix/vimrc/master/vimrcs/basic.vim

# clinch permissions
find etc -type d -exec chmod 755 {} \;
find etc -type f -exec chmod 644 {} \;
find etc/profile.d -type f -exec chmod 755 {} \;

