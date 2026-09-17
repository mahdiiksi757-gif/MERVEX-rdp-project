#!/bin/bash
export DEBIAN_FRONTEND=noninteractive

echo "==> Updating system & installing packages..."
apt update
apt install -y xfce4 xfce4-goodies xrdp ssh

echo "==> Configuring XRDP..."
adduser xrdp ssl-cert
/usr/sbin/xrdp-sesman
/usr/sbin/xrdp

echo "==> Starting Localhost.run TCP Tunnel..."
ssh -o StrictHostKeyChecking=no -R 80:localhost:3389 localhost.run
