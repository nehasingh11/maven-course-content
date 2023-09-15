#!/bin/bash
sudo apt install -y openjdk-17-jdk
sudo apt install -y openjdk-17-jre
sudo apt install git -y
cd /opt
sudo curl https://dlcdn.apache.org/maven/maven-3/3.9.4/binaries/apache-maven-3.9.4-bin.tar.gz --output apache-maven-3.9.4-bin.tar.gz
sudo tar -xvzf apache-maven-3.9.4-bin.tar.gz

# nano /etc/environment
# Add - /opt/apache-maven-3.9.4:/opt/apache-maven-3.9.4/bin