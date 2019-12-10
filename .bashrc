#
# .bashrc
# # command prompt
PS1="\[\e[35m\] [\w] \[\e[31m\](\!)\[\e[33m\]\$(__git_ps1)\n\[\e[32m\]◟(ˊ꒵ˋ∗)◜∗.♪ \[\e[0m\]$ "
#PS1="[\w]"

# alias
alias rm='rm -i'
alias od='od -tx1z -Ax -v'
alias ll='ls -l'
alias la='ls -a'
alias ls='exa'
alias sl='sl -aF'

alias mkcd='source ~/bin/mkcd.sh'

#alias g++='g++ -std=c++11'
alias gcc='/usr/local/bin/gcc-8'
alias g++='/usr/local/bin/g++-8 -std=c++11'

alias javac='javac -J-Duser.language=en'

#git/github
eval "$(hub alias -s)"
alias g='git'

#ターミナルでの補完
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash


