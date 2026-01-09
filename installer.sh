#!/bin/bash

# 1. Deteksi OS
if [ -f /etc/os-release ]; then
    . /etc/os-release
    OS=$ID
    VER=$VERSION_ID
else
    echo "Tidak dapat mendeteksi OS. File /etc/os-release tidak ditemukan."
    exit 1
fi

echo "Mendeteksi OS: $OS $VER"

# 2. Jalankan update berdasarkan jenis OS
case "$OS" in
    ubuntu|debian)
        echo "Menjalankan update untuk $OS..."
        apt update -y && apt upgrade -y
        ;;
    centos|almalinux|rocky)
        echo "Menjalankan update untuk $OS..."
        dnf update -y
        # EPEL hanya diperlukan di keluarga RHEL/CentOS
        dnf install epel-release -y
        ;;
    *)
        echo "OS $OS tidak didukung secara otomatis oleh script ini."
        exit 1
        ;;
esac

# 3. Jalankan installer CyberPanel
sh <(curl https://cyberpanel.net/install.sh || wget -O - https://cyberpanel.net/install.sh)
