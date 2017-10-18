#!/usr/bin/env bash

# copy bash setup
cp ./.bash_profile ~/.bash_profile
cp ./.bashrc ~/.bashrc

# source the new bash profile
. ~/.bash_profile

# install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew bundle

# install Node Version Manager
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.5/install.sh | bash

# copy app configuration
cp -R ./Library/. ~/Library
