#!/bin/bash
#Install mysql, apache, mongodb, postgres

#Function to check if the software was previously installed
checking (){
 if ! [ -x "$(command -v '$1')" ]; then
    echo "$1 already installed."
    exit 1
 fi
}

#Take in input values
echo -n "do you want install 1) mysql 2) apache 3) mongodb 4)Postgres?"

#Loop break after each command
while true; do
read num

   if [[ "$num" == '1' ]]; then
checking "mysql"
#Install mysql
sudo apt update -y && sudo apt install mysql-server -y && sudo systemctl start
break
elif [[ "$num" == '2' ]]; then
checking "apache2"
#Install Apache
sudo apt update -y && sudo apt install apache2 -y
break
elif [[ "$num" == '3' ]]; then
checking "mongosh"
#Install Mongodb
curl -fsSL https://pgp.mongodb.com/server-7.0.asc | sudo gpg -o /usr/share/keyrings/mongodb-server-7.0.gpg --dearmor && echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-7.0.gpg ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/7.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-7.0.list && sudo apt update && sleep 10 && sudo apt install -y mongodb-org;
break
elif [[ "$num" == '4' ]]; then
checking "psql"
#Install Postgres
sudo apt update -y && sudo apt install postgresql-server-dev-all -y
break
else
#For any other value
   echo "You did not enter a correct value"
break
fi
done
