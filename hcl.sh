#!/bin/bash

export BREWDIR="$HOME/goinfre/homebrew"

rm -rf "$BREWDIR"
rm -rf "$HOME/goinfre/Applications"

mkdir -p "$HOME/goinfre/Applications"
ln -s "$HOME/goinfre/Applications" "$HOME/Applications"
git clone https://github.com/Homebrew/brew $BREWDIR

# Shell Profile
$BREWDIR/bin/brew shellenv >> $HOME/.zshrc
source $HOME/.zshrc

# Appdir
export HOMEBREW_CASK_OPTS="--appdir=$HOME/goinfre/Applications"

# Formulas
brew install gh mas numi

# Casks
mkdir -p "$HOME/goinfre/Library/Application Support/JetBrains"
ln -s "$HOME/goinfre/Library/Application Support/JetBrains" "/Users/sot/Library/Application Support/JetBrains"
brew install --cask jetbrains-toolbox

mkdir -p "$HOME/goinfre/Library/Application Support/Notion"
ln -s "$HOME/goinfre/Library/Application Support/Notion" "/Users/sot/Library/Application Support/Notion"
brew install --cask Notion

mkdir -p "$HOME/goinfre/Library/Application Support/tabby"
ln -s "$HOME/goinfre/Library/Application Support/tabby" "/Users/sot/Library/Application Support/tabby"
brew install --cask tabby

mkdir -p "$HOME/goinfre/Library/Application Support/Google/Chrome Canary"
ln -s "$HOME/goinfre/Library/Application Support/Google/Chrome Canary" "/Users/sot/Library/Application Support/Google/Chrome Canary"
brew tap homebrew/cask-versions && brew install --cask google-chrome-canary

# Apps
mas install 411643860 957734279

