#!/bin/bash
set -e
echo "Creating a new KVM VPS..."
read -p "Enter VPS name: " VPS_NAME
read -p "Enter RAM in MB: " RAM
read -p "Enter Disk size in GB: " DISK
read -p "Enter number of CPUs: " CPU

virt-install \
--name $VPS_NAME \
--ram $RAM \
--vcpus $CPU \
--disk size=$DISK \
--os-variant ubuntu22.04 \
--network network=default \
--graphics none \
--console pty,target_type=serial \
--location 'http://releases.ubuntu.com/22.04/ubuntu-22.04-live-server-amd64.iso' \
--extra-args 'console=ttyS0,115200n8 serial'
