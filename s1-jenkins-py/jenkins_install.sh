#!/usr/bin/env bash

sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get -y install default-jre default-jdk git jenkins python3 python3-pip > /dev/null 2>&1

# jenkins is installed as system service
sudo service jenkins start

# wait for jenkins to start
sleep 30
JENKINSPWD=$(sudo cat /var/lib/jenkins/secrets/initialAdminPassword)
echo "Initial Password: $JENKINSPWD"
