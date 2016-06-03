#!/bin/bash

# super fast repeat
defaults write NSGlobalDomain KeyRepeat -int 0
# show hidden files by default in all views
defaults write com.apple.finder AppleShowAllFiles YES
# allow finder quit
defaults write com.apple.finder QuitMenuItem -bool true

mkdir -p $HOME/plex-media
mkdir -p $HOME/.virtualenvs

easy_install pip
pip install -r bootstrap/pip-packages.txt

docker-machine create -d virtualbox --virtualbox-cpu-count "4" --virtualbox-disk-size "30000" --virtualbox-memory "6144" default

eval $(docker-machine env default)
# User interaction required
docker login
