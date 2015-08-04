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

# Configure p4merge to be used by SourceTree
git config --global difftool.sourcetree.cmd '/Applications/p4merge.app/Contents/MacOS/p4merge "$LOCAL" "$REMOTE"'
git config --global difftool.sourcetree.path ''
git config --global mergetool.sourcetree.cmd '/Applications/p4merge.app/Contents/MacOS/p4merge "$BASE" "$LOCAL" "$REMOTE" "$MERGED"'
git config --global mergetool.sourcetree.trustExitCode true

# Configure git to use SourceTree's prefered mergetools
git config --global merge.tool sourcetree
