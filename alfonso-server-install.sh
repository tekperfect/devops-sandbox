#!/bin/bash

echo -n "Would you like to install a Web Server or Database Server?... Enter 1 for Apache, 2 for MySQL, 3 for Postgres, or 4 for MongoDB: "
read VAR
	if [[ $VAR = 1 ]]; then
      		sudo apt update && sudo apt install apache2 -y
	fi
	if [[ $VAR = 2 ]]; then
    		sudo apt install mysql-server-8.0 -y
	fi
	if [[ $VAR = 3 ]]; then
    		sudo apt install postgresql-server-dev-all -y
	fi
	if [[ $VAR = 4 ]]; then
    		sudo apt install gnupg curl && curl -fsSL https://pgp.mongodb.com/server-7.0.asc | sudo gpg -o /usr/share/keyrings/mongodb-server-7.0.gpg --dearmor echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-7.0.gpg ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/7.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-7.0.list && sudo apt-get update && sudo apt-get install mongodb-org -y
	fi
done
