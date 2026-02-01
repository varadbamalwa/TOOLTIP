#!/bin/bash
set -e
echo "Installing Tailscale..."
curl -fsSL https://tailscale.com/install.sh | sh
tailscale up
echo "Tailscale installed. Run 'tailscale ip' to see your VPS IP."
