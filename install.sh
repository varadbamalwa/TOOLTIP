#!/bin/bash
clear

echo -e "\e[36m"
cat banner.txt
echo -e "\e[0m"

echo "=================================="
echo "1) Install XRDP"
echo "2) Install Tailscale"
echo "3) Install Pterodactyl Panel"
echo "4) Install Pterodactyl Wings"
echo "5) Setup KVM Host"
echo "6) Create REAL KVM VPS"
echo "0) Exit"
echo "=================================="

read -p "Select Option: " opt

case $opt in
  1) bash scripts/xrdp.sh ;;
  2) bash scripts/tailscale.sh ;;
  3) bash scripts/pterodactyl-panel.sh ;;
  4) bash scripts/pterodactyl-wings.sh ;;
  5) bash scripts/kvm-host-setup.sh ;;
  6) bash scripts/create-kvm-vps.sh ;;
  0) exit ;;
esac
