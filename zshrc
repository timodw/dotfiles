# Path to your oh-my-zsh installation.
export ZSH=/Users/timodewaele/.oh-my-zsh

ZSH_THEME=""

plugins=(git osx colored-man-pages vundle)

source $ZSH/oh-my-zsh.sh

autoload -U promptinit; promptinit
prompt pure

export PATH=$PATH:"/Applications/Julia-1.1.app/Contents/Resources/julia/bin"

alias ateraan="telnet www.ateraan.com 4002"
alias add="add -v"
alias rm="rm -v"
alias play="spotify play"
alias pause="spotify pause"
alias next="spotify next"
alias prev="spotify prev"
alias message_zohra="imessage +32470352266"
alias bob="make"

eval $(thefuck --alias)

function touch {
    /usr/bin/touch $@ || {(afplay ~/Documents/touch.mp3&); false;} 
}

function py {
    python3 -c "print($@)"
}

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="/Applications/CoqIDE_8.8.1.app/Contents/Resources/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
