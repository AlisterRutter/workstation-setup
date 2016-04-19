#!/usr/bin/env bash

brew cask install --appdir=/Applications virtualbox vagrant;

vagrant plugin install vagrant-cachier vagrant-hostmanager vagrant-vbox-snapshot;

brew install git node homebrew/php/php56 homebrew/php/php56-mcrypt ngrok;
sudo npm install -g bless@3.x

. install-ruby.sh;

gem install bundler:1.10.6 rake:11.1.2;

git clone git@github.com:Equiem/THEPORTAL.git $HOME/theportal;

sudo mkdir /Equiem;

sudo chown `whoami`:admin /Equiem;
