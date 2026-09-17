#!/bin/bash
export DEBIAN_FRONTEND=noninteractive

echo "==> Updating system & installing packages..."
apt update
apt install -y xfce4 xfce4-goodies xrdp ssh

echo "==> Configuring XRDP..."
adduser xrdp ssl-cert
/usr/sbin/xrdp-sesman
/usr/sbin/xrdp

echo "==> Starting Pinggy TCP Tunnel..."
ssh -p 443 -R0:localhost:3389 qr@a.pinggy.io -o StrictHostKeyChecking=no
