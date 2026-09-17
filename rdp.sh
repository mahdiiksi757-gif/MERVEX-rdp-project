#!/bin/bash
export DEBIAN_FRONTEND=noninteractive
apt update
apt install -y xfce4 xfce4-goodies xrdp
adduser xrdp ssl-cert
/usr/sbin/xrdp-sesman
/usr/sbin/xrdp
echo "RDP Started Successfully!"
