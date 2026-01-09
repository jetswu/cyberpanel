#!/bin/bash
dnf update -y
dnf install epel-release -y
wget -O installer.sh https://cyberpanel.net/install.sh
