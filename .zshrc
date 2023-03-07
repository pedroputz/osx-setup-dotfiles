# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# configs
export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

ZSH_THEME="putz"
ZSH_CUSTOM=~/.dotfiles/zsh

source $ZSH/oh-my-zsh.sh

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# NVM
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Android Studio adb
export PATH="/Users/pedroputz/Library/Android/sdk/platform-tools:$PATH"
