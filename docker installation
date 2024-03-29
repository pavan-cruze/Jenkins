#!/bin/bash
sudo apt update
sudo apt install docker.io -y

#giving permissions to jenkins as a worker node / agents 
sudo su -
usermod -aG docker jenkins
usermod -aG docker ubuntu
systemctl restart docker
