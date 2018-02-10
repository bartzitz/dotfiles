#!/bin/sh
#
# This script will symlink .dotfiles/*/*.symlink files to home dir

cd "$(dirname "$0")/.."
DOTFILES_ROOT=$(pwd -P)

set -e

install_deps() {
  echo "=== installing deps..."
  find -H "$DOTFILES_ROOT" -maxdepth 3 -name 'install.sh' -not -path '*.git*' |
    while read -r installer; do
      echo "running ${installer}..."
      sh -c "$installer"
    done
}

link_file() {
  if [ -e "$2" ]; then
    if [ "$(readlink "$2")" = "$1" ]; then
      echo "skipped $1"
      return 0
    else
      mv "$2" "$2.backup"
      echo "moved $2 to $2.backup"
    fi
  fi
  ln -sf "$1" "$2"
  echo "linked $1 to $2"
}

link_dotfiles() {
  echo "=== symlinking dotfiles..."
  find -H "$DOTFILES_ROOT" -maxdepth 3 -name '*.symlink' -not -path '*.git*' |
    while read -r src; do
      dst="$HOME/.$(basename "${src%.*}")"
      link_file "$src" "$dst"
    done
}

install_deps
link_dotfiles

echo 'all done!'
