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
__prompt_kaomoji='%{%{${fg[green]}%}%}(*•̀ᴗ•́*)و ̑̑%{$reset_color%}'
__prompt_kaomoji_angly='%{%{${fg[red]}%}%}（ノ-_-）ノ~┻━┻%{$reset_color%}'

PROMPT=${__prompt_kaomoji}
precmd () {
    PROMPT="%(?.${__prompt_kaomoji}.${__prompt_kaomoji_angly}) $ "
}
RPROMPT='%T'


bindkey -e

# alias
alias rm='rm -i'
#alias od='od -tx1z -Ax -v'
alias ll='ls -l'
alias la='ls -a'
alias dc='docker-compose'

#alias g++='g++ -std=c++11'
alias gcc='/opt/homebrew/bin/gcc-12'
alias g++='/opt/homebrew/bin/g++-12'

#git/github
eval "$(hub alias -s)"
alias g='git'
alias rmbranch="git branch --merged|egrep -v '\*|develop|master'|xargs git branch -d"
alias gitlog="git log --oneline --graph --decorate"

export GOPATH="$HOME/Documents/Codes/Go"
export PATH="$PATH:$GOPATH/bin"

export PATH="$PATH:$HOME/Documents/Codes/Flutter/flutter/bin"

export USER_NUMBER=1
export BASTION_IP=153.125.137.74
alias sshdev="sudo ssh ssh2-${USER_NUMBER}@${BASTION_IP} -L 80:192.168.0.2:80 -L 590${USER_NUMBER}:192.168.0.2:590${USER_NUMBER}"

# Volta
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
## experimental  at 2023/03/04
export VOLTA_FEATURE_PNPM=1

# homebrew
export HOMEBREW_BUNDLE_FILE="$HOME/dotfiles/.brewfile"
alias brewi='(){ brew install $1 && brew bundle -f dump }'

# pnpm
alias pn='pnpm'
