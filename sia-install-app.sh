#!/bin/bash
#Sia testing installing apps

echo "This script will install either Apache2 Webserver or MySQL"

while true; do
read -p "To install Apache, enter a, to install MySQL, enter b: (a/b) " ab 

case $ab in

[Aa]* ) echo "You entered A/a for Apache2.";sudo apt update -y && sudo apt install -y apache2;;
[Bb]* ) echo "You entered B/b for MySQL. ";sudo apt update -y && sudo apt install -y mysql;;
* ) echo "Please answer a or b ONLY or press ctrl+c to exit this script!";;
esac
done
