#!/bin/bash
sudo apt-get update
sudo apt install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
sudo apt-get update
apt-cache policy docker-ce
sudo apt install -y docker-ce
docker run --name some-nginx -v /some/content:/usr/share/nginx/html:ro -d nginx
