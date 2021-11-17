#!/bin/bash
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

#move resolv.conf to correct location
#sudo mv /home/gors/resolv.conf /etc


#run nginx
#tive de adicionar nameservers em /etc/resolv.conf para conseguir correr o comando abaixo
sudo docker pull nginx
sudo docker run --name my-nginx -v /home/gors/html:/usr/share/nginx/html:ro -p 8080:80 -d nginx

#Browsertime
#sudo docker pull sitespeedio/browsertime
#sudo docker run --shm-size=1g --rm -v "$(pwd)":/browsertime sitespeedio/browsertime https://www.sitespeed.io/

##mudar para outro
# ssh -i /home/gors/g.rsa.txt 192.168.109.152