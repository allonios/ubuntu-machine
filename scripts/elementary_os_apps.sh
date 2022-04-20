#!/usr/bin/env bash

# add elemenatry os repository
###############################################################################################################################################
# sudo add-apt-repository ppa:elementary-os/stable -y
sudo bash -c 'echo "deb http://ppa.launchpad.net/elementary-os/stable/ubuntu/ bionic main" > /etc/apt/sources.list.d/elementary-os-ubuntu-stable-bionic.list'
sudo apt update
###############################################################################################################################################

# file manager + terminal
###############################################################################################################################################
sudo apt install pantheon-files pantheon-terminal -y
sudo apt --fix-broken install
###############################################################################################################################################

# remove elemenatry os repository
###############################################################################################################################################
sudo rm /etc/apt/sources.list.d/elementary-os-ubuntu-stable-bionic.list
sudo apt update
###############################################################################################################################################
