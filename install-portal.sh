#!/usr/bin/env bash

brew cask install --appdir=/Applications virtualbox vagrant;

brew cask install --appdir=/Applications bittorrent-sync;

vagrant plugin install vagrant-cachier vagrant-hostmanager vagrant-vbox-snapshot;

brew install git git-flow node homebrew/php/php55 homebrew/php/php55-mcrypt;
sudo npm install -g bless

. install-ruby.sh;

gem install bundler:1.10.5 rake:10.4.2;

git clone git@github.com:Equiem/THEPORTAL.git $HOME/theportal;

sudo mkdir /Equiem;

sudo chown `whoami`:admin /Equiem;
