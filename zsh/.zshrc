export PATH=$PATH:~/bin
export EDITOR=nvim

# Shell integrations
eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source "$HOME/.asdf/asdf.sh"
source <(fzf --zsh)

# Command history
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

# Completion
autoload -U compinit && compinit
zmodload -i zsh/complist

# Keyboard bindings
bindkey -e
bindkey "^b" backward-word
bindkey "^f" forward-word

# Aliases
alias l="eza -T --level=2 --group-directories-first"
alias ll="l --long"
alias la="l --all"
alias cd="z"
alias old_branches="git branch -vv | grep 'origin/.*: gone]' | awk '{print \$1}'"
