#!/usr/bin/env bash

# inkscape
###############################################################################################################################################
sudo add-apt-repository ppa:inkscape.dev/stable -y
sudo apt install inkscape -y
###############################################################################################################################################

# melody player
###############################################################################################################################################
flatpak install flathub com.github.artemanufrij.playmymusic -y
###############################################################################################################################################

# diodon clipboard manager
###############################################################################################################################################
sudo apt install diodon -y
###############################################################################################################################################


# snap apps:
# vscode, spotify, whatsapp
###############################################################################################################################################
sudo snap install spotify
sudo snap install code
sudo snap install whatsapp-for-linux
###############################################################################################################################################