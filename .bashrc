export PATH=/usr/local/bin:/usr/bin:/bin
alias brew="env PATH=${PATH/\/Users\/takc923\/\.phpenv\/shims:/} brew"

alias vim='vim;clear'

#
# .bashrc 
#

# プロンプトにマシン名(\h)とカレントのフルパス(\w)を表示
#
#PS1="\[[\u@\h \W]\\$ \]"
PS1="\[\e[36m\] [\w] \[\e[33m\](\!)\[\e[32m\]\$(__git_ps1)\[\e[0m\]$ "


#
# grep -----------------------------------------------------------
#
# GREP_COLORは、検索ワードを色づけするために使用。
# 色づけすると、視認性が格段にあがる。
# -Eオプションは、拡張正規表現を使用する場合に指定
#
export GREP_COLOR='1;37;41'
alias grep='grep -E --color=auto'


#
# Aliases --------------------------------------------------------
#

#
# -iは確認を行う。-vは詳細な情報の表示。
#
#alias cp='cp -iv'
alias rm='rm -i'
#alias mv='mv -i'

#
# odは16進数でのバイナリダンプコマンド
# -tx1zは、1バイトごとに区切って表示
# -Axはアドレスを16進数表示、-vは連続する0をスキップしない
#
alias od='od -tx1z -Ax -v'


#
# ls -------------------------------------------------------------
#
#alias ll='ls -l'


#
# lsのカラー化
#
#export LS_COLORS='no=01;37:fi=00:di=01;36:ln=01;32:pi=40;33:so=01;35:bd=40;33;01:cd=40;33;01:or=40;32;01:ex=01;33:*core=01;31:'
#alias ls='ls -G'


#
# オリジナルのTERM=xtermはカラー表示できないと思われる。
#
if [ "$TERM" == xterm ]; then
      export TERM=xterm-color
fi

alias vim='vi'
alias la='ls -a'
alias mkcd='source ~/bin/mkcd.sh'
alias g++='g++ -std=c++11'

#ターミナルでの補完
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash

