#!/bin/sh

mkdir -p "$HOME/.docker/completions"

if [ ! -f "$HOME/.docker/completions/_docker-compose" ]; then
  curl -sL https://raw.githubusercontent.com/docker/compose/master/contrib/completion/zsh/_docker-compose \
    -o "$HOME/.docker/completions/_docker-compose"
fi

if [ ! -f "$HOME/.docker/completions/_docker" ]; then
  curl -sL https://raw.githubusercontent.com/docker/cli/master/contrib/completion/zsh/_docker \
    -o "$HOME/.docker/completions/_docker"
fi
