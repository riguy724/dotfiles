#!/bin/bash

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -fs /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

brew install gnu-sed

brew install brew-cask
brew install homebrew/php/php56
brew install composer
brew install coreutils
brew install openssl
brew install postgresql
brew install python
brew install sqlite
brew install tree
brew install watch
brew install wget
brew install findutils
brew install docker
brew install docker-machine
brew install docker-compose
brew install mysql

brew cask install atom
brew cask install minecraft
brew cask install ngrok
brew cask install no-ip-duc
brew cask install pgadmin3
brew cask install plex-media-server
brew cask install timer
brew cask install vlc
brew cask install google-chrome
brew cask install sequel-pro
brew cask install colloquy
brew cask install hipchat
brew cask install slack
brew cask install utorrent
brew cask install istat-menus
brew cask install webstorm
brew cask install pycharm
brew cask install phpstorm
brew cask install virtualbox
brew cask install kitematic
brew cask install skype
brew cask install gitter
brew cask install osxfuse
brew cask install sshfs

brew cleanup
