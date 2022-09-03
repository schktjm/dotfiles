#!/bin/zsh

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/schktjm/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
brew bundle --file=.brewfile

