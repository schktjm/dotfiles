#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# zshrc
#
setopt interactivecomments

# Prompt
autoload -U colors
colors

#PS1="${fg[green]}(*•̀ᴗ•́*)و ̑̑${reset_color}"
#
__prompt_kaomoji='${fg[green]}(*•̀ᴗ•́*)و ̑̑${reset_color}'
__prompt_kaomoji_angly='${fg[red]}（ノ-_-）ノ~┻━┻${reset_color}'

PROMPT=${__prompt_kaomoji}
precmd () {
    PROMPT="%(?.${__prompt_kaomoji}.${__prompt_kaomoji_angly}) $ "
}


bindkey -e

# alias
alias rm='rm -i'
#alias od='od -tx1z -Ax -v'
alias ll='ls -l'
alias la='ls -a'
alias dc='docker-compose'

#alias g++='g++ -std=c++11'
alias gcc='/usr/local/bin/gcc-8'
alias g++='/usr/local/bin/g++-8 -std=c++11'

#git/github
eval "$(hub alias -s)"
alias g='git'
alias rmbranch="git branch --merged|egrep -v '\*|develop|master'|xargs git branch -d"

export GOPATH="$HOME/Documents/Codes/Go"
export PATH="$PATH:$GOPATH/bin"

export PATH="$PATH:$HOME/Documents/Codes/Flutter/flutter/bin"

export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"
