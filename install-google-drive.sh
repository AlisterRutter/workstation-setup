#!/usr/bin/env bash

brew cask install --appdir=/Applications google-drive;

mkdir -p ~/Library/LaunchAgents
cp ./user.launchkeep.googledrive.plist ~/Library/LaunchAgents/launchkeep.googledrive.plist;

launchctl load ~/Library/LaunchAgents/launchkeep.googledrive.plist;
