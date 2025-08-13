#!/bin/sh

if [ ! -d ~/.config ]; then
  mkdir ~/.config
fi

DOTFILES=${HOME}/dotfiles

ln -sfn $DOTFILES/zsh/zshrc    ~/.zshrc
ln -sfn $DOTFILES/asdf/asdfrc  ~/.asdfrc
ln -sfn $DOTFILES/git          ~/.config/git
ln -sfn $DOTFILES/nvim         ~/.config/nvim
ln -sfn $DOTFILES/wezterm      ~/.config/wezterm
