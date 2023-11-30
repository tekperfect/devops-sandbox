#!/bin/bash
#Install mysql
if [ "$(dpkg -l | grep mysql-server*)" ]; then
    echo "installed"
else
    echo "not installed"
sudo apt update -y && sudo apt install mysql-server -y && sudo systemctl start mysql.service
fi

