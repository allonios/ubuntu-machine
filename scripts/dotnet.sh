#!/usr/bin/env bash

wget https://packages.microsoft.com/config/ubuntu/21.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb

sudo apt-get update

sudo apt-get install -y apt-transport-https dotnet-sdk-6.0

# runtime
sudo apt-get install -y aspnetcore-runtime-6.0

