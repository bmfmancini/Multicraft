#///The Purpose of this script is to install Multicraft along with all prequsites 
#///this script has been tested on Ubuntu and debian with and without sudo  
#///you may have to edit the add user funtion replace "sean" with the user you will be using




#!/bin/bash
echo "updating OS"

 sleep 1

  sudo apt-get update; apt-get upgrade -y



echo " Installing Sudo"
 sleep 1
  apt-get install sudo


echo " adding user to Sudo group"
 sleep 1
  sudo adduser $USER  sudo


echo "Install prequisites"
 sleep 1
  apt-get install -y apache2 sqlite php5 php5-sqlite php5-gd openjdk-7-jre-headless

echo "Prequisites have been installed now allow overirdes in apache config under /var/www"
 sleep 2
  sudo nano /etc/apache2/apache2.conf

echo " Restarting apache"
 sleep 1
  sudo service apache2 restart


echo "Downloading Multicraft"
 sleep 1
  wget --content-disposition http://www.multicraft.org/download/index?arch=linux64


echo "Extracting"
 sleep 1
  tar -xzf multicraft*.tar.gz


    cd multicraft/



echo "Running install"
 sleep 1
  sudo ./setup.sh



