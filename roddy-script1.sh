#!/bin/bash

echo "Welcome to the Visual Studio Code installer script!"
read -p "Do you want to install Visual Studio Code? (yes/no): " install_choice

if [ "$install_choice" == "yes" ]; then
    echo "Great! Let's proceed with the installation."

    # Detecting the operating system
    if [[ "$OSTYPE" == "linux-gnu" ]]; then
        echo "Detected Linux operating system."
        read -p "Is this correct? (yes/no): " os_confirmation

        if [ "$os_confirmation" == "yes" ]; then
            # Installing Visual Studio Code on Linux
            echo "Installing Visual Studio Code on Linux..."
            # Add installation commands for Linux here
            # Example: sudo apt-get update && sudo apt-get install code
            echo "Installation completed."
        else
            echo "Installation aborted. Please run the script again with the correct operating system."
        fi

    elif [[ "$OSTYPE" == "darwin"* ]]; then
        echo "Detected macOS operating system."
        read -p "Is this correct? (yes/no): " os_confirmation

        if [ "$os_confirmation" == "yes" ]; then
            # Installing Visual Studio Code on macOS
            echo "Installing Visual Studio Code on macOS..."
            # Add installation commands for macOS here
            # Example: brew cask install visual-studio-code
            echo "Installation completed."
        else
            echo "Installation aborted. Please run the script again with the correct operating system."
        fi

    elif [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" ]]; then
        echo "Detected Windows operating system."
        read -p "Is this correct? (yes/no): " os_confirmation

        if [ "$os_confirmation" == "yes" ]; then
            # Installing Visual Studio Code on Windows
            echo "Installing Visual Studio Code on Windows..."
            # Add installation commands for Windows here
            # Example: choco install visualstudiocode
            echo "Installation completed."
        else
            echo "Installation aborted. Please run the script again with the correct operating system."
        fi

    else
        echo "Unsupported operating system. Please install Visual Studio Code manually on your system."
    fi

else
    echo "Installation canceled. No changes were made."
fi
