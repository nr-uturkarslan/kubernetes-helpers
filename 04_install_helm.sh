#!/bin/bash

# Update
sudo apt-get update
echo Y | sudo apt-get upgrade

# Download
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3

# Install
chmod 700 get_helm.sh
./get_helm.sh
