#!/usr/bin/env bash

# install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew bundle

# install Node Version Manager
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.5/install.sh | bash
