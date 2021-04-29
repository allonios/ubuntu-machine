#!/usr/bin/env bash

# nodejs:
###############################################################################################################################################
sudo apt-get update
sudo apt-get install build-essential libssl-dev
sudo curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
nvm install node
nvm install 7.10.1
nvm install 10.24.0
npm install -g npm@7.6.3
###############################################################################################################################################
