#!/usr/bin/env bash

# main packages
###############################################################################################################################################
sudo add-apt-repository ppa:git-core/ppa -y
sudo apt install git
sudo apt install dconf-editor compizconfig-settings-manager python3.8 python3-pip software-properties-common python-dev python3-dev python3.8-dev python3.8-venv libpq-dev build-essential snapd python-setuptools vim vlc zip unzip rar unrar sqlite3 libsqlite3-dev default-libmysqlclient-dev sqlitebrowser qbittorrent openvpn network-manager-openvpn-gnome build-essential libssl-dev -y
###############################################################################################################################################

# babi editor
###############################################################################################################################################
python3 -m pip install babi
###############################################################################################################################################

# tkinter
###############################################################################################################################################
sudo apt-get install python-tk python3-tk tk-dev
###############################################################################################################################################

# Papirus icons:
###############################################################################################################################################
sudo add-apt-repository ppa:papirus/papirus
sudo apt install papirus-icon-theme -y
###############################################################################################################################################

# git aliases
###############################################################################################################################################
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
###############################################################################################################################################
