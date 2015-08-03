#!/usr/bin/env bash

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";

echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bash_profile;
source ~/.bash_profile;

# If this doesn't say "raring to brew" update this script!
brew update;
brew doctor;

brew install caskroom/cask/brew-cask;
