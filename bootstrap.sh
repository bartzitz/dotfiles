#!/bin/sh

set -e

DOTFILES_ROOT=$(pwd -P)

./docker/install.sh
./zgen/install.sh

ln -sf "$DOTFILES_ROOT/zsh/.zshrc" "$HOME"

echo 'all done!'
