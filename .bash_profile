export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/Cellar/git/2.11.0/bin:$PATH"


#export PYENV_ROOT="/usr/local/var/pyenv"

#if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

#export PYENV_ROOT="$HOME/.pyenv"
#export PATH="$PYENV_ROOT/bin:$PATH"
#eval "$(pyenv init -)"


alias ls="exa -F"

if [ -f ~/.bashrc ] ; then
    . ~/.bashrc
fi

# pyenvさんに~/.pyenvではなく、/usr/loca/var/pyenvを使うようにお願いする
export PYENV_ROOT=/usr/local/var/pyenv

# pyenvさんに自動補完機能を提供してもらう
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
