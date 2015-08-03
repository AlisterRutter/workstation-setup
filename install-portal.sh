brew cask install --appdir=/Applications virtualbox vagrant;

vagrant plugin install vagrant-cachier vagrant-hostmanager;

brew install git git-flow node homebrew/php/php55;

brew cask install --appdir=/Applications java;

. install-ruby

gem install bundler;
gem install rake:10.4.2;

git clone git@github.com:Equiem/THEPORTAL.git $HOME/theportal;
