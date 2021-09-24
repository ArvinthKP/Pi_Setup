#!/bin/sh
echo "Installing Shell in a Box"
sudo apt install shellinabox -y
echo "Installing Docker"
curl -sSL https://get.docker.com | sh
sudo usermod -aG docker $USER
echo "remember to logoff to take effect"
echo "installing docker compose"
sudo apt-get install libffi-dev libssl-dev
sudo apt install python3-dev
sudo apt-get install -y python3 python3-pip
sudo pip3 install docker-compose
echo "installing portainer"
sudo docker pull portainer/portainer-ce:latest
sudo docker run -d -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest

