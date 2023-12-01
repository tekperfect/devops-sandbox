#!/bin/bash
#Install mysql or apache
string1="mysql"
string2="apache"
echo -n "do you want install apache or mysql? (type: apache or mysql)"
read choice
case $choice in
    $string1)
sudo apt update -y && sudo apt install mysql-server -y && sudo systemctl start
;;
    $string2)
sudo apt update -y && sudo apt install apache2 -y
;;
esac

