#!/bin/bash
export DEBIAN_FRONTEND=noninteractive
apt update
apt install -y xfce4 xfce4-goodies xrdp
adduser xrdp ssl-cert
systemctl restart xrdp
echo "RDP Ready!"
