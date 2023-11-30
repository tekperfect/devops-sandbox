!/bin/batch
#Function to install a webserver
install-webserver() {
	echo "Installing webserver"
	sudo apt update -y && sudo apt install apache2 -y
	echo "Webserver installed"
}
#Function to install a database
install-database() {
	echo " Installing Database"
	sudo apt install  mysql-server -y; postgresql-server-dev-all -y
	echo " Database installed"
}
#Main script
echo "Do you want to install a webserver or a database? (yes or no)"
read -p user_choice

if ["$user_choice" = "yes"]; then
	echo "Which one do you want to install? (wenserver/database"
	read -p installation_choice

	if ["$installation_choice" = "webserver"]; then
	install-webserver
	elif ["$installation_choice" = "database"]; then
	install-database
	else
	    echo "Invalid choice. Existing"
	fi
else
	echo " Existing without installation"
fi
