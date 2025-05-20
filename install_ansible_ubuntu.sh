#!/bin/bash
#ansible installation script on ubuntu
sudo apt update -y && sudo apt upgrade -y
# Install dependencies
sudo apt install -y python3 python3-pip python3-venv
# Create a virtual environment for Ansible
python3 -m venv ~/ansible-env

# Activate the virtual environment
source ~/ansible-env/bin/activate
# Upgrade pip in the virtual environment
pip install --upgrade pip

#install ansible
pip install ansible
# Initialize default Ansible config
ansible-config init --disabled > ansible.cfg
