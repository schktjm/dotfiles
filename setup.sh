#!/bin/bash

select_gitmessage() {
    PS3='どちらの .gitmessage を使用しますか？ '

    emoji="絵文字の gitmessage"
    work="社会人用の gitmessage"

    select file in emoji work
    do
        if [ $file = emoji ] ; then
            unlink $HOME/.gitmessage
            ln -s ${PWD}/.gitmessage $HOME/.gitmessage
            break
        else
            unlink $HOME/.gitmessage
            ln -s ${PWD}/.gitmessage_work $HOME/.gitmessage
            break
        fi
    done
}

select_gitmessage

for f in .??*
do
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".DS_Store" ]] && continue
    [[ "$f" == ".brewfile" ]] && continue
    [[ "$f" == ".gitmessage" ]] && continue
    [[ "$f" == ".gitmessage_work" ]] && continue

    echo "$f"
    unlink $HOME/$f
    ln -s ${PWD}/$f $HOME/$f
done

# Prezto のセットアップ
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

