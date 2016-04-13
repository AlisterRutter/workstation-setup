#!/usr/bin/env bash

brew tap caskroom/versions;
brew cask install --appdir=/Applications sublime-text3;
mkdir -p ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User;
cp ./Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings;

brew cask install --appdir=/Applications atom;
apm install parinfer;
apm install git-plus;
apm install terminal-panel;
