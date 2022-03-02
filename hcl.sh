#!/bin/bash

BREWDIR="$HOME/goinfre/homebrew"

git clone https://github.com/Homebrew/brew $BREWDIR

eval `$BREWDIR/bin/brew shellenv`
brew update --force --quiet

$(brew shellenv) >> $HOME/.zshrc && source $HOME/.zshrc

brew install gh

