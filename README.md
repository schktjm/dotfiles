# dotfiles

## セットアップ方法

※ homebrew を使用しているため基本的に Mac/Linux 専用です。
Windows を使用する時は 2 を飛ばして頑張る。

### 1. git のセットアップを自力で行う

git を使用しているので ssh-key の登録までは自力で行ってください

### 2. brew のインストール

このディレクトリ内に移動し以下のコマンドをうつ
curl がなかったりといろんな理由でエラーがでるのでその時は端末の最適な方法を取る

```sh
$ ./install_brew.sh
```

### 3. setup

```sh
$ ./setup.sh
```

_vimrc の参照した qiita_  
https://qiita.com/ahiruman5/items/4f3c845500c172a02935  
https://qiita.com/kuwana/items/d9778a9ec42a53b3aa10

## アップデート方法

### brewfile のアップデート方法

1. install と同時に行う場合

```sh
$ brewi [package]
```

2. 普通にアップデートしたい時

```
$ brew bundle -f dump
```

https://docs.brew.sh/Manpage#bundle-subcommand

