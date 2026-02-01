#!/bin/bash
set -e
echo "Installing Pterodactyl Wings..."
# Download Wings
curl -Lo /usr/local/bin/wings https://github.com/pterodactyl/wings/releases/latest/download/wings_linux_amd64
chmod +x /usr/local/bin/wings
# Create systemd service
cat <<EOT >/etc/systemd/system/wings.service
[Unit]
Description=Pterodactyl Wings
After=network.target

[Service]
User=root
Restart=always
ExecStart=/usr/local/bin/wings

[Install]
WantedBy=multi-user.target
EOT

systemctl enable wings
systemctl start wings
echo "Pterodactyl Wings installed and running."
