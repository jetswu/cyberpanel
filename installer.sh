#!/bin/bash
dnf update -y
dnf install epel-release -y
sh <(curl https://cyberpanel.net/install.sh || wget -O - https://cyberpanel.net/install.sh)

# Buka shell interaktif
exec bash
