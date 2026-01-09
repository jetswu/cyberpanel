#!/bin/bash
dnf update -y
dnf install epel-release -y
exec bash
sh <(curl https://cyberpanel.net/install.sh || wget -O - https://cyberpanel.net/install.sh)

