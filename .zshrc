# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# configs
export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

ZSH_THEME="putz"
ZSH_CUSTOM=~/.dotfiles/zsh

source $ZSH/oh-my-zsh.sh

# NVM
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
