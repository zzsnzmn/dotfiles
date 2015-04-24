#!/bin/bash
# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-brew installed formulae
brew upgrade

# brew install Bash 4
brew install bash

# tmux and clipboard sharing
brew install tmux
brew install reattach-to-user-namespace

# brew install wget with IRI support
brew install wget --enable-iri

# brew install more recent versions of some OS X tools
brew install vim --override-system-vi --env-std
brew install ctags

# brew install other useful binaries
brew install exiv2
brew install ag
brew install git
brew install imagemagick --with-webp
brew install lynx
brew install node
brew install youtube-dl
brew install tree
brew install webkit2png
brew install p7zip

# progamming stuffs
brew install python

# database stuff
brew install redis

brew install boot2docker

# set up cask
brew tap caskroom/cask
brew install brew-cask

# set up vagrant and virtualbox
brew cask install vagrant  --appdir=/Applications
brew cask install virtualbox --appdir=/Applications

# brew install docker binary
brew install docker

# Remove outdated versions from the cellar
brew cleanup
