source "${HOME}/.zgen/zgen.zsh"

if ! zgen saved; then
  echo "Creating a zgen save"

  zgen load mafredri/zsh-async
  zgen load sindresorhus/pure

  zgen save
fi
