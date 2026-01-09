#!/bin/bash
dnf update -y
dnf install epel-release -y
wget -O - https://cyberpanel.net/install.sh
