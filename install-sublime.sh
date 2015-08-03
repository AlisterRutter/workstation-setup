brew tap caskroom/versions;
brew cask install --appdir=/Applications sublime-text3;
mkdir ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User;
cp ./Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings;
