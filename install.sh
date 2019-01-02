#!/bin/sh

set -e

# Install homebrew
if [ ! -f /usr/local/bin/brew ]; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install homebrew apps
brew cask install iterm2
brew cask install clipy
brew install zsh

# Setup zsh

# Set MacOS shell to zsh
sudo dscl . -create /Users/$USER UserShell /usr/local/bin/zsh

# Install zplugin
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zplugin/master/doc/install.sh)"

# iTerm2 preferences directory
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/dotfiles/iterm2"

# Tell iTerm2 to use the custom preferences in the directory
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true

# Link config files
ln -sf ~/dotfiles/zsh/zshrc ~/.zshrc
ln -sf ~/dotfiles/vim ~/.vim

# Install vim plugins
vim +PlugInstall +qall

