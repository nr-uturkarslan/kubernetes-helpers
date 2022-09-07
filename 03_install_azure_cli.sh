#!/bin/bash

# Update
sudo apt-get update
echo Y | sudo apt-get upgrade

# Install
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
