# Path to your oh-my-zsh installation.
export ZSH=/Users/timodewaele/.oh-my-zsh

ZSH_THEME=""

plugins=(git osx colored-man-pages vundle)

source $ZSH/oh-my-zsh.sh

autoload -U promptinit; promptinit
prompt pure

alias ateraan="telnet www.ateraan.com 4002"
alias add="add -v"
alias rm="rm -v"
alias play="spotify play"
alias pause="spotify pause"
alias next="spotify next"
alias prev="spotify prev"
alias bob="make"
