#!/usr/bin/env sh
# Configure Build Environment

set -e

# vimrc
curl --fail --silent --show-error --create-dirs --output etc/vim/vimrc.local \
    --url https://raw.githubusercontent.com/amix/vimrc/master/vimrcs/basic.vim

# environment.sh
curl --fail --silent --show-error --create-dirs --output etc/profile.d/environment.sh \
    --url https://raw.githubusercontent.com/ashenm/environment/master/linux/components/etc/profile.d/environment.sh

# clinch permissions
find etc -type d -exec chmod 755 {} \;
find etc -type f -exec chmod 644 {} \;
