#!/usr/bin/env bash

brew install python;
# http://devdocs.equiem.com.au/getting-started-devdocs/
sudo easy_install pip;
sudo pip install mkdocs;

git clone git@github.com:Equiem/devdocs.git ~/devdocs;
