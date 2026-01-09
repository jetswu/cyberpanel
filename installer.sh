#!/bin/bash
dnf update -y && \
dnf install epel-release -y && \
wget -O install.sh https://cyberpanel.net/install.sh && sh install.sh
