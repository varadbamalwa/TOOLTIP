#!/bin/bash
set -e
echo "Installing Pterodactyl Panel..."
# Basic dependencies
$PKG_UPDATE
$PKG_INSTALL software-properties-common unzip curl php-cli php-mbstring php-bcmath php-gd php-curl php-xml composer mariadb-server nginx
echo "Pterodactyl panel dependencies installed."
echo "You can complete panel setup manually via web browser."
