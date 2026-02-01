#!/bin/bash

echo "=================================="
echo " Installing XRDP"
echo "=================================="

# Update system
apt update -y

# Install XRDP and desktop
apt install -y xrdp xfce4 xfce4-goodies sudo

# Set XFCE as default session for XRDP
echo "xfce4-session" > /etc/skel/.xsession
echo "xfce4-session" > ~/.xsession

# Enable and restart XRDP
systemctl enable xrdp
systemctl restart xrdp

echo "=================================="
echo " XRDP INSTALLED SUCCESSFULLY"
echo " Port: 3389"
echo " Login with your Linux username"
echo "=================================="
