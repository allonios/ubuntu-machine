#!/usr/bin/env bash

# docker:
###############################################################################################################################################
sudo apt-get remove docker docker-engine docker.io containerd runc -y
sudo apt-get install ca-certificates curl gnupg lsb-release -y

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y

sudo systemctl start docker
sudo systemctl enable docker
sudo systemctl restart docker

sudo docker run hello-world

# used docker without sudo:
###########################################################################
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
###########################################################################


# lazydocker
###############################################################################################################################################
curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash
###############################################################################################################################################
