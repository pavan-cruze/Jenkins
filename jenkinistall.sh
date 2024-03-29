#!/bin/bash

set -x -e -o #-x for debugmode -e forexitingwhenscriptonerror -o pipefail
sudo apt update

sudo apt install openjdk-11-jre -y
java -version
curl -fsSL https://pkg.jenkins.io/debian/jenkins.io-2023.key | sudo tee \
          /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
          https://pkg.jenkins.io/debian binary/ | sudo tee \
            /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins -y
