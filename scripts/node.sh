#!/usr/bin/env bash

# nodejs:
# using old versions for some legacy projects.
###############################################################################################################################################
sudo curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh
nvm install node
nvm install 7.10.1
nvm install 10.24.0
npm install -g npm@7.6.3
npm --version
nvm --version
node --version
###############################################################################################################################################
