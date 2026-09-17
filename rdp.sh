#!/bin/bash
export DEBIAN_FRONTEND=noninteractive

echo "==> Updating system & installing packages..."
apt update
apt install -y xfce4 xfce4-goodies xrdp ssh

echo "==> Configuring XRDP..."
adduser xrdp ssl-cert
/usr/sbin/xrdp-sesman
/usr/sbin/xrdp

echo "==> Starting Serveo TCP Tunnel..."
ssh -o StrictHostKeyChecking=no -R 0:localhost:3389 serveo.net
