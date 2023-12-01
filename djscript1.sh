#!/bin/bash

read -p "Do you want to install a webserver or a database? (y/n) " yn

case $yn in
 [Yy]* )
   read -p "Which one? (w/d) " choice
   if [ "$choice" = "w" ]; then
     sudo apt update -y && sudo apt install -y apache2
   elif [ "$choice" = "d" ]; then
     sudo apt install -y mysql-server && sudo apt install -y
postgresql-server-dev-all
   else
     echo "Invalid choice. Exiting"
     exit 1
   fi
   ;;
 [Nn]* )
   echo "Exiting without installation"
   ;;
 * )
   echo "Invalid choice. Exiting"
   ;;
esac
