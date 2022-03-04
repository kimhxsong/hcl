# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    hcl.sh                                             :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hyeonsok <hyeonsok@student.42seoul.kr>     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/03/03 02:00:26 by hyeonsok          #+#    #+#              #
#    Updated: 2022/03/04 10:52:25 by hyeonsok         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

export BREWDIR="$HOME/goinfre/homebrew"

rm -rf "$BREWDIR"
rm -rf "$HOME/goinfre/Applications"

mkdir -p "$HOME/goinfre/Applications"
ln -s "$HOME/goinfre/Applications" "$HOME/Applications"
git clone https://github.com/Homebrew/brew $BREWDIR

# Shellenv, Homebrew Appdir
$BREWDIR/bin/brew shellenv >> $HOME/.zshrc
echo 'export HOMEBREW_CASK_OPTS="--appdir=$HOME/goinfre/Applications"' >> $HOME/.zshrc
source $HOME/.zshrc

# Formulas
brew install gh mas numi

# Casks

## Jetbrains Toolbox
rm -rf "$HOME/Library/Application Support/JetBrains"
mkdir -p "$HOME/goinfre/Library/Application Support/JetBrains"
ln -s "$HOME/goinfre/Library/Application Support/JetBrains" "$HOME/Library/Application Support/JetBrains"
brew install --cask jetbrains-toolbox

## Notion
rm -rf "$HOME/Library/Application Support/Notion"
mkdir -p "$HOME/goinfre/Library/Application Support/Notion"
ln -s "$HOME/goinfre/Library/Application Support/Notion" "$HOME/Library/Application Support/Notion"
brew install --cask Notion

## Tabby
rm -rf "$HOME/Library/Application Support/tabby"
mkdir -p "$HOME/goinfre/Library/Application Support/tabby"
ln -s "$HOME/goinfre/Library/Application Support/tabby" "$HOME/Library/Application Support/tabby"
brew install --cask tabby

## Chrome Canary
rm -rf "$HOME/Library/Application Support/Google/Chrome Canary"
mkdir -p "$HOME/goinfre/Library/Application Support/Google/Chrome Canary"
ln -s "$HOME/goinfre/Library/Application Support/Google/Chrome Canary" "$HOME/Library/Application Support/Google/Chrome Canary"
brew tap homebrew/cask-versions && brew install --cask google-chrome-canary

# Apps
## Toggle Track	957734279
## Daisy Disk	411643860
mas install 411643860 957734279
