#!/bin/bash
dnf update -y
dnf install epel-release -y
wget -O cyberpanel_install.sh https://cyberpanel.net/install.sh
# Gunakan exec agar input keyboard diteruskan dengan benar
exec sh cyberpanel_install.sh
