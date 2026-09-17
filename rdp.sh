#!/bin/bash
export DEBIAN_FRONTEND=noninteractive

echo "==> Updating system & installing packages..."
apt update
apt install -y xfce4 xfce4-goodies xrdp wget curl npm

echo "==> Configuring XRDP..."
adduser xrdp ssl-cert
/usr/sbin/xrdp-sesman
/usr/sbin/xrdp

echo "==> Installing LocalTunnel..."
npm install -g localtunnel

echo "==> Starting LocalTunnel on port 3389..."
# Kay3tina link public majani dyal locatunnel
lt --port 3389 &

echo "RDP & LocalTunnel Started Successfully!"
