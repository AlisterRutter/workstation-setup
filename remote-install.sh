#!/usr/bin/env bash

echo "=> Downloading workstation setup scripts..."
curl -sSL -o /tmp/workstation-setup.zip https://github.com/Equiem/workstation-setup/archive/master.zip
cd /tmp
unzip -q workstation-setup.zip
cd workstation-setup-master

echo "=> Installing all options..."
./install-all.sh

echo "=> Cleaning up..."
cd $HOME
rm -r /tmp/workstation-setup.zip /tmp/workstation-setup-master
