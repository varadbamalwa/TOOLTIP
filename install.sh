#!/bin/bash
clear
cat banner.txt

# Detect OS
if [ -f /etc/debian_version ]; then
    OS="debian"
    PKG_UPDATE="apt update -y"
    PKG_INSTALL="apt install -y"
elif [ -f /etc/redhat-release ]; then
    OS="redhat"
    PKG_UPDATE="yum update -y"
    PKG_INSTALL="yum install -y"
else
    echo "Unsupported OS"
    exit 1
fi

# Make sure dependencies are installed
$PKG_UPDATE
$PKG_INSTALL curl wget sudo

while true; do
    echo "=================================="
    echo "1) Install XRDP"
    echo "2) Install Tailscale"
    echo "3) Install Pterodactyl Panel"
    echo "4) Install Pterodactyl Wings"
    echo "5) Setup KVM Host"
    echo "6) Create Real KVM VPS"
    echo "0) Exit"
    echo "=================================="
    read -p "Select Option: " opt

    case $opt in
        1) bash ./scripts/xrdp.sh ;;
        2) bash ./scripts/tailscale.sh ;;
        3) bash ./scripts/pterodactyl-panel.sh ;;
        4) bash ./scripts/pterodactyl-wings.sh ;;
        5) bash ./scripts/kvm-host-setup.sh ;;
        6) bash ./scripts/create-kvm-vps.sh ;;
        0) exit ;;
        *) echo "Invalid option";;
    esac
done
