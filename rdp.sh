#!/bin/bash
export DEBIAN_FRONTEND=noninteractive

echo "==> Updating system & installing packages..."
apt update
apt install -y xfce4 xfce4-goodies xrdp wget curl

echo "==> Configuring XRDP..."
adduser xrdp ssl-cert
/usr/sbin/xrdp-sesman
/usr/sbin/xrdp

echo "==> Setting up Ngrok..."
# Télécharger ngrok (ila ma kanch)
curl -sSL https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz -o ngrok.tgz
tar -xvzf ngrok.tgz
chmod +x ngrok

# Hna hot token dyalk (Bddal YOUR_NGROK_AUTHTOKEN b l-authtoken dyalk mn ngrok.com)
./ngrok config add-authtoken 3JRbECyl1QSnGFgozQtFgQJp529_2anuZbRNfWXgqAQCGdbpC
# Demarri l-tunnel 3la port 3389
echo "==> Starting Ngrok tunnel..."
./ngrok tcp 3389 &

echo "RDP & Ngrok Started Successfully!"
