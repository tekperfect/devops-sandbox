#!/bin/bash

# Function to check if a command is available
command_exists() {
    command -v "$1" &> /dev/null
}

# Detect the operating system
os_type=$(uname -s)

# Check the operating system and set package manager accordingly
if [ "$os_type" == "Linux" ]; then
    package_manager=""

    # Detect the package manager (apt, yum, pacman, etc.)
    if command_exists apt; then
        package_manager="apt"
    elif command_exists yum; then
        package_manager="yum"
    elif command_exists pacman; then
        package_manager="pacman"
    fi

    if [ -z "$package_manager" ]; then
        echo "Unsupported package manager. Please install Apache2, MySQL-server, MongoDB, and Postgres manually."
        exit 1
    fi
else
    echo "Unsupported operating system. Please install Apache2, MySQL-server, MongoDB, and Postgres manually."
    exit 1
fi

# Check if Apache2 is installed
if ! command_exists apache2; then
    echo "Apache2 is not installed."
    install_apache2=true
fi

# Check if MySQL-server is installed
if ! command_exists mysql; then
    echo "MySQL-server is not installed."
    install_mysql=true
fi

# Check if MongoDB is installed
if ! command_exists mongod; then
    echo "MongoDB is not installed."
    install_mongodb=true
fi

# Check if Postgres is installed
if ! command_exists postgres; then
    echo "Postgres is not installed."
    install_postgres=true
fi

# Ask user if they want to install the missing programs
if [ "$install_apache2" = true ] || [ "$install_mysql" = true ] || [ "$install_mongodb" = true ] || [ "$install_postgres" = true ]; then
    echo "Do you want to install all missing programs? (yes/no)"
    read install_all

    if [ "$install_all" == "yes" ]; then
        # Install missing programs
        [ "$install_apache2" = true ] && sudo "$package_manager" install apache2 # Replace with actual package manager command for Apache2
        [ "$install_mysql" = true ] && sudo "$package_manager" install mysql-server # Replace with actual package manager command for MySQL-server
        [ "$install_mongodb" = true ] && sudo "$package_manager" install mongodb # Replace with actual package manager command for MongoDB
        [ "$install_postgres" = true ] && sudo "$package_manager" install postgresql # Replace with actual package manager command for Postgres
    else
        echo "Installation aborted."
    fi
else
    echo "All programs are already installed."
fi
