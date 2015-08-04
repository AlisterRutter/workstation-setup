#!/usr/bin/env bash

brew cask install --appdir=/Applications sourcetree;

if [ -e /usr/local/bin/git ]; then
  # Use the system git instead of the built-in version. This also prevents issues
  # with SourceTree mangling $PATH which prevents some git hooks from running
  # correctly.
  defaults write com.torusknot.SourceTreeNotMAS gitCustomPath '/usr/local/bin/git'
  defaults write com.torusknot.SourceTreeNotMAS gitWhichOne -int 1
fi

brew cask install --appdir=/Applications p4merge;
