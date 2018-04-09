#
# .bashrc
#
# command prompt
PS1="\[\e[35m\] [\w] \[\e[31m\](\!)\[\e[33m\]\$(__git_ps1)\n\[\e[32m\]٩(๑•̀ω•́๑)۶ \[\e[0m\]$ "

# alias
alias rm='rm -i'
alias od='od -tx1z -Ax -v'
alias ll='ls -l'
alias la='ls -a'
alias g++='g++ -std=c++11'
alias ls='exa'
alias sl='sl -aF'

alias mkcd='source ~/bin/mkcd.sh'

#ターミナルでの補完
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash

