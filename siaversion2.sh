#!/bin/bash
#Sia
#script to install apps using if then else

read -p "Enter a value. 1=apache2 2=mysql 3=postgre 4=mongodb to install the  app: " value

if [ $value -eq 1 ]
then
   #Install Apache2
   echo "installing Apache"
   sudo apt update -y
   sudo apt install -y apache2
   echo "-------------------------------------------------------------------------"

elif [ $value -eq 2 ]
then
   #Install MySQL
   echo "installing mysql"
   sudo apt update -y
   sudo apt install -y mysql
   echo "-------------------------------------------------------------------------"

elif [ $value -eq 3 ]
then
   #Install Postgre
   echo "installing postgre"
   sudo apt update -y
   sudo apt install -y postgre
   echo "-------------------------------------------------------------------------"

elif [ $value -eq 4 ]
then
   #Install MongoDB
   echo "installing mongo"
   sudo apt-get install gnupg curl
   sudo curl -fsSL https://pgp.mongodb.com/server-7.0.asc | sudo gpg -o /usr/share/keyrings/mongodb-server-7.0.gpg --dearmor
   echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-7.0.gpg ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/7.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-7.0.list
   sudo apt-get update
   sudo apt-get install -y mongodb-org
   echo "-------------------------------------------------------------------------"

else 

   echo "You did not enter a correct value, exiting program!"

fi
