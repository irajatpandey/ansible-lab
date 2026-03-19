#!/bin/bash
# ============================================================
# Ansible Managed Node — EC2 User Data (Amazon Linux 2023)
# Minimal setup: Python3 + SSH ready
# Log: /var/log/ansible-node-setup.log
# ============================================================
sudo su -
exec > /var/log/ansible-node-setup.log 2>&1
set -e

echo ">>> [1/3] Updating system packages..."
dnf update -y

echo ">>> [2/3] Installing Python3 and dependencies..."
dnf install -y \
  python3 \
  python3-pip \
  python3-devel \
  tar \
  unzip \
  git

echo ">>> [3/3] Verifying Python..."
python3 --version

echo ""
echo "============================================"
echo " Managed node ready!"
echo " Ansible will SSH in and use Python3."
echo "============================================"