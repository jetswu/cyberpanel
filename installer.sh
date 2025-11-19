#!/bin/bash
rpm --import https://repo.almalinux.org/almalinux/RPM-GPG-KEY-AlmaLinux && \
dnf update -y && \
dnf install epel-release -y && \
dnf upgrade -y && \
yum install screen -y && \
screen -S cyberpanel -dm sh <(curl https://cyberpanel.net/install.sh || wget -O - https://cyberpanel.net/install.sh) && \
echo "Instalasi CyberPanel dimulai di sesi screen 'cyberpanel'. Untuk melihat progres, jalankan: screen -r cyberpanel"
