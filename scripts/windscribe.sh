#!/usr/bin/env bash

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key FDC247B7

echo 'deb https://repo.windscribe.com/ubuntu bionic main' | sudo tee /etc/apt/sources.list.d/windscribe-repo.list

sudo apt update

sudo apt-get install windscribe-cli -y

