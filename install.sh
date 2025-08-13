#!/bin/sh

set -e

# Install homebrew
if [ ! -x "$(command -v brew)" ]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install homebrew apps
brew bundle

# Setup zsh

# Install zplugin
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zplugin/master/doc/install.sh)"

# Set MacOS shell to zsh
# sudo dscl . -create /Users/$USER UserShell /usr/local/bin/zsh

