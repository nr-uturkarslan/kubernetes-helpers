#!/bin/bash

# Update
sudo apt-get update
echo Y | sudo apt-get upgrade

# Clone repo to app
mkdir app
cd app
git clone https://github.com/nr-uturkarslan/kubernetes-helpers.git

# Install jq
echo Y | sudo apt-get install jq
