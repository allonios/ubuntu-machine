#!/usr/bin/env bash

sudo apt install dconf-editor compizconfig-settings-manager git python3.8 python3-pip software-properties-common python-dev python3-dev python3.8-dev python3.8-venv libpq-dev build-essential snapd python-setuptools vim vlc zip unzip sqlitebrowser qbittorrent openvpn network-manager-openvpn-gnome build-essential libssl-dev -y

# tkinter
###############################################################################################################################################
sudo apt-get install python-tk python3-tk tk-dev
###############################################################################################################################################

#inkscape
###############################################################################################################################################
sudo add-apt-repository ppa:inkscape.dev/stable
sudo apt install inkscape -y
###############################################################################################################################################

# Papirus icons:
###############################################################################################################################################
sudo add-apt-repository ppa:papirus/papirus
sudo apt install papirus-icon-theme -y
###############################################################################################################################################

# git aliases
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status

# melody player
###############################################################################################################################################
flatpak install flathub com.github.artemanufrij.playmymusic
###############################################################################################################################################
