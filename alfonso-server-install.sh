# Test comment
#!/bin/bash

echo -n "Would you like to install a Web Server or Database Server?... Enter 1 for Web or 2 for Database: "
read VAR
	if [[ $VAR = 1 ]]; then
      		sudo apt install apache2 -y
	fi
	if [[ $VAR = 2 ]]; then
    		sudo apt install mysql-server-8.0 -y
	fi
done
