#!/usr/bin/env bash

# main packages
###############################################################################################################################################
sudo add-apt-repository ppa:git-core/ppa -y
sudo apt install git -y
sudo apt install python3-pip python3-venv python-setuptools python3-dev python-dev
sudo apt install dconf-editor compizconfig-settings-manager gnome-tweak-tool gparted software-properties-common libpq-dev build-essential snapd  vim vlc zip unzip rar unrar sqlite3 libsqlite3-dev default-libmysqlclient-dev sqlitebrowser qbittorrent openvpn network-manager-openvpn-gnome build-essential libssl-dev tree gnome-shell-extension-draw-on-your-screen simplescreenrecorder -y
###############################################################################################################################################

# babi editor
###############################################################################################################################################
sudo python3 -m pip install babi
###############################################################################################################################################

# tkinter
###############################################################################################################################################
sudo apt-get install python-tk python3-tk tk-dev -y
###############################################################################################################################################

# Papirus icons:
###############################################################################################################################################
sudo add-apt-repository ppa:papirus/papirus -y
sudo apt install papirus-icon-theme -y
###############################################################################################################################################

# git aliases
###############################################################################################################################################
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.st status
git config --global alias.sg stage
git config --global alias.ci commit
###############################################################################################################################################
