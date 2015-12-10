#!/bin/bash

DF_HOME=$(cd $(dirname "$BASH_SOURCE"); pwd)

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
source $DF_HOME/bootstrap/brew-install-all.sh
cat $DF_HOME/bootstrap/apm-package-list.txt | xargs apm install

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash
exec $SHELL -l
nvm install node
nvm install v4
nvm use v4

# super fast repeat
defaults write NSGlobalDomain KeyRepeat -int 0
# show hidden files by default in all views
defaults write com.apple.finder AppleShowAllFiles YES
# allow finder quit
defaults write com.apple.finder QuitMenuItem -bool true

mkdir -p $HOME/plex-media
mkdir -p $HOME/Projects/cg
mkdir -p $HOME/Projects/nowait
mkdir -p $HOME/Projects/personal
mkdir -p $HOME/Projects/vew-managed
mkdir -p $HOME/.virtualenvs

easy_install pip
pip install -r bootstrap/pip-packages.txt

docker-machine create -d virtualbox --virtualbox-cpu-count "4" --virtualbox-disk-size "30000" --virtualbox-memory "6144" default

eval $(docker-machine env default)
# User interaction required
docker login
