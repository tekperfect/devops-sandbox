#!/bin/bash
#Install mysql, apache, mongodb
echo -n "do you want install 1) apache 2) mysql 3) mongodb 4)Postgres?"

while true; do
read num

   if [[ "$num" == '1' ]]; then
sudo apt update -y && sudo apt install mysql-server -y && sudo systemctl start
break
elif [[ "$num" == '2' ]]; then
sudo apt update -y && sudo apt install apache2 -y
break
elif [[ "$num" == '3' ]]; then
curl -fsSL https://pgp.mongodb.com/server-7.0.asc | sudo gpg -o /usr/share/keyrings/mongodb-server-7.0.gpg --dearmor >
break
elif [[ "$num" == '4' ]]; then
sudo apt update -y && sudo apt install postgresql-server-dev-all -y
break
   fi
done

