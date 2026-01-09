#!/bin/bash
dnf update -y
dnf install epel-release -y
wget -O cyberpanel_install.sh https://cyberpanel.net/install.sh
sh cyberpanel_install.sh
