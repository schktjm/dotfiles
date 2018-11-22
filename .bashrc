#
# .bashrc
#
# command prompt
PS1="\[\e[35m\] [\w] \[\e[31m\](\!)\[\e[33m\]\$(__git_ps1)\n\[\e[32m\]◟(ˊ꒵ˋ∗)◜∗.♪ \[\e[0m\]$ "

# alias
alias rm='rm -i'
alias od='od -tx1z -Ax -v'
alias ll='ls -l'
alias la='ls -a'
alias g++='g++ -std=c++11'
alias ls='exa'
alias sl='sl -aF'

alias mkcd='source ~/bin/mkcd.sh'

alias arduino180='/Applications/Arduino180.app/Contents/MacOS/Arduino'
alias arduino185='/Applications/Arduino185.app/Contents/MacOS/Arduino'

eval "$(hub alias -s)"

#ターミナルでの補完
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash


