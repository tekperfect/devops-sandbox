#!/bin/bash

echo "Select a database to install:"
echo "1. Apache2"
echo "2. MySQL-server"
echo "3. MongoDB"
echo "4. Postgres"

read -p "Enter the number of your choice: " choice

# Check if the input is a number between 1 and 4. This ensures that the input is a single digit between 1 and 4 
if [[ ! $choice =~ ^[1-4]$ ]]; then
    echo "Invalid input. Please enter a number between 1 and 4."
    exit 1
fi

# Update package lists This line updates the package lists to ensure that you are installing the latest available versions of the packages.
sudo apt-get update

if [[ $choice -eq 1 ]]; then
    # Install Apache2
    sudo apt-get install apache2
    echo "Apache2 installed successfully."

elif [[ $choice -eq 2 ]]; then
    # Install MySQL-server
    sudo apt-get install mysql-server
    echo "MySQL-server installed successfully."

elif [[ $choice -eq 3 ]]; then
    # Install MongoDB
    sudo apt-get install mongodb
    echo "MongoDB installed successfully."

elif [[ $choice -eq 4 ]]; then
    # Install Postgres
    sudo apt-get install postgresql
    echo "Postgres installed successfully."

fi

