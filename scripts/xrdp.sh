#!/bin/bash
set -e
echo "Installing XRDP..."

if [[ "$OS" == "debian" ]]; then
    $PKG_INSTALL xfce4 xfce4-goodies xrdp
elif [[ "$OS" == "redhat" ]]; then
    $PKG_INSTALL epel-release
    $PKG_INSTALL tigervnc-server xrdp
fi

# XFCE default session
echo "xfce4-session" > ~/.xsession

# Enable XRDP
systemctl enable xrdp
systemctl restart xrdp

echo "XRDP installed. Port 3389."
