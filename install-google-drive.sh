brew cask install google-drive;

cp ./user.launchkeep.googledrive.plist ~/Library/LaunchAgents/launchkeep.googledrive.plist;

launchctl load ~/Library/LaunchAgents/launchkeep.googledrive.plist;
