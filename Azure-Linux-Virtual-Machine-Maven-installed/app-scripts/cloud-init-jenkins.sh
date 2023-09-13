#!/bin/bash
sudo apt install openjdk-11-jre -y
sudo apt install git -y
cd /opt
sudo curl https://dlcdn.apache.org/maven/maven-3/3.9.4/binaries/apache-maven-3.9.4-bin.tar.gz --output apache-maven-3.9.4-bin.tar.gz
sudo tar -xvzf apache-maven-3.9.4-bin.tar.gz