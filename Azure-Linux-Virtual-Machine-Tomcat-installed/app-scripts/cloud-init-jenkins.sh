#!/bin/bash
sudo apt install openjdk-11-jre -y
cd /opt/
sudo curl https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.93/bin/apache-tomcat-8.5.93.tar.gz --output /opt/apache-tomcat-8.5.93.tar.gz
sudo tar -xvzf /opt/apache-tomcat-8.5.93.tar.gz
sudo chmod +x /opt/apache-tomcat-8.5.93/bin/startup.sh
sudo chmod +x /opt/apache-tomcat-8.5.93/bin/shutdown.sh
sudo ln -s /opt/apache-tomcat-8.5.93/bin/startup.sh /usr/local/bin/tomcatup
sudo ln -s /opt/apache-tomcat-8.5.93/bin/shutdown.sh /usr/local/bin/tomcatdown
tomcatup