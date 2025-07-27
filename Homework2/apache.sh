#!/bin/bash

sudo apt update
sudo apt install apache2 -y
sudo chown -R ubuntu:www-data /var/www/html
echo "Hello, World" | sudo tee /var/www/html/index.html
sudo systemctl restart apache2 -y
