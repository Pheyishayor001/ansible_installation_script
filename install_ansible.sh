#!/bin/bash
# Script to install Python 3, pip, Ansible, and configure terminal and Ansible settings on an Amazon Linux server

# Update system packages
yum update -y

# Install Python 3.8
amazon-linux-extras install python3.8 -y

# Install pip for Python 3.8
python3.8 -m ensurepip --upgrade

# Install Ansible using pip
python3.8 -m pip install --upgrade pip
python3.8 -m pip install ansible

# Install boto3, botocore, and awscli
python3.8 -m pip install boto3 botocore awscli

# Install the Amazon Ansible EC2 plugin
ansible-galaxy collection install amazon.aws

# Initialize a default Ansible configuration file
ansible-config init --disabled > ansible.cfg

# Add a success message to the log
echo "Installation and configuration completed successfully!" >> /var/log/user_data.log 2>&1
