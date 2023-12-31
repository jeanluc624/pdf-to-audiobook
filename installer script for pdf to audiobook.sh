#!/bin/bash

# Function to check if a package is installed
is_package_installed() {
    dpkg -s "$1" > /dev/null 2>&1
}

# Function to install a package if it's not already installed
install_package() {
    if ! is_package_installed "$1"; then
        echo "Installing $1..."
        sudo apt-get install -y "$1"
    else
        echo "$1 is already installed."
    fi
}

# Check and install pdftoppm
install_package "poppler-utils"

# Check and install tesseract
install_package "tesseract-ocr"

# Check and install espeak
install_package "espeak"

# Check and install ffmpeg
install_package "ffmpeg"

# Check and install mb-us1 voice for espeak
if ! espeak --voices | grep -q "mb-us1"; then
    echo "Installing mb-us1 voice for espeak..."
    sudo apt-get install -y mbrola mbrola-us1
    sudo espeak --voices | grep mb-us1 # Display available voices for verification
else
    echo "mb-us1 voice for espeak is already installed."
fi

echo "Installation complete."
exit
