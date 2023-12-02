#!/bin/bash
# Function to install Apache2
install_Apache2() {
   echo "Installing Apache2"
   sudo apt update -y
   sudo apt install apache2 -y
   echo "Apache2 installed"
}

# Function to install MySQL-server
install_MySQL_server() {
   echo "Installing MySQL-server"
   sudo apt install mysql-server -y
   echo "MySQL-server installed"
}

# Function to install Postgres
install_Postgres() {
   echo "Installing Postgres"
   sudo apt install postgresql-server-dev-all -y
   echo "Postgres installed"
}

# Function to install MongoDB
install_MongoDB() {
   echo "Installing MongoDB"
   sudo apt-get install gnupg curl
curl -fsSL https://pgp.mongodb.com/server-7.0.asc | sudo gpg -o /usr/share/keyrings/mongodb-server-7.0.gpg --dearmor
echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-7.0.gpg ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/7.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-7.0.list
sudo apt-get update
sudo apt-get install -y mongodb-org
   echo "MongoDB installed"
}

# Main script
echo "Do you want to install Apache2, MySQL, Postgres, or MongoDB? (yes or
no)"
read user_choice

if [ "$user_choice" = "yes" ]; then
   echo "Which one do you want to install? (Apache2, MySQL, Postgres, or
MongoDB)"
   read installation_choice

   case "$installation_choice" in
       "Apache2") install_Apache2 ;;
       "MySQL") install_MySQL_server ;;
       "Postgres") install_Postgres ;;
       "MongoDB") install_MongoDB ;;
       *) echo "Invalid choice. Exiting" ;;
   esac
else
   echo "Exiting without installation"
fi
