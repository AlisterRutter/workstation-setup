#!/usr/bin/env bash

# This must be done in the right order.
sudo -v;
. install-xcode.sh;

sudo -v;
. install-wget.sh;

sudo -v;
. install-homebrew.sh;

sudo -v;
. install-git.sh;

sudo -v;
. install-ruby.sh;

# Everything below this point can be installed in any order
sudo -v;
. install-browsers.sh;

sudo -v;
. install-sublime.sh;

sudo -v;
. install-sourcetree.sh;

sudo -v;
. install-google-drive.sh;

sudo -v;
. install-flowdock.sh;

sudo -v;
. install-office.sh;

sudo -v;
. install-sequel-pro.sh;

sudo -v;
. install-xscope.sh;
# MAMP is used to house dbs for people running reports.

sudo -v;
. install-mamp.sh;
# Tableau is used to create visualisations of data.

sudo -v;
. install-tableau.sh;
# Disk inventory X helps us debug disk space issues.

sudo -v;
. install-btsync.sh;

sudo -v;
. install-disk-inventory-x.sh;
. set-mac-defaults.sh;
