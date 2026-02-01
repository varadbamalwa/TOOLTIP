#!/bin/bash

echo "=================================="
echo " Installing Tailscale VPN"
echo "=================================="

# Install Tailscale
curl -fsSL https://tailscale.com/install.sh | sh

# Start Tailscale
tailscale up

echo "=================================="
echo " TAILSCALE INSTALLED"
echo " Run: tailscale ip"
echo "=================================="
