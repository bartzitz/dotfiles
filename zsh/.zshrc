export EDITOR="subl -n -w"
export VISUAL="subl -n -w"

export PATH="${HOME}/bin:${PATH}"

source "${HOME}/dotfiles/zsh/config.zsh"
source "${HOME}/dotfiles/zsh/aliases.zsh"
source "${HOME}/dotfiles/docker/completion.zsh"
source "${HOME}/dotfiles/zgen/init.zsh"

if [ -f "${HOME}/.localrc" ]; then
  source "${HOME}/.localrc"
fi