#!/bin/bash
set -e
echo "Setting up KVM Host..."
if [[ "$OS" == "debian" ]]; then
    $PKG_INSTALL qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils virt-manager
elif [[ "$OS" == "redhat" ]]; then
    $PKG_INSTALL qemu-kvm libvirt virt-install virt-manager
fi
systemctl enable libvirtd
systemctl start libvirtd
echo "KVM host setup complete."
