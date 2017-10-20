#!/usr/bin/env bash

safe_copy() {
  if [ -r $2 ]; then
    echo "$2 already exists so backing up to $2.bak"
    mv -f $2 $2.bak
  fi
  echo "copying $1 to $2"
  cp -f $1 $2
}

# copy bash setup
safe_copy .bash_profile ~/.bash_profile
safe_copy .bashrc ~/.bashrc

# source the new bash profile
. ~/.bash_profile

# copy ssh configuration
cp -R .ssh/. ~/.ssh

# install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install tools and applications via Homebrew
brew bundle

# install Node Version Manager (as installation via Homebrew is not recommended)
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.5/install.sh | bash

# copy app configuration
safe_copy .gitconfig ~/.gitconfig
cp -R Library/. ~/Library

# create directories for work and code
mkdir -p ~/work
mkdir -p ~/code

# clone this repo
if [ -d ~/code/dotfiles ]; then
  cd ~/code/dotfiles && git pull --rebase
else
  git clone git@github.com:GentlemanHal/dotfiles.git ~/code/dotfiles
fi
