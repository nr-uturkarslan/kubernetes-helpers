#!/bin/bash

# Get commandline arguments
while (( "$#" )); do
  case "$1" in
    --resource-group)
      resourceGroupName="$2"
      shift
      ;;
    --aks-name)
      aksName="$2"
      shift
      ;;
    *)
      shift
      ;;
  esac
done

# Update
sudo apt-get update
echo Y | sudo apt-get upgrade

# Install
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

# Log in
az login --use-device-code

# Get AKS credentials
sudo az aks get-credentials \
  --resource-group $resourceGroupName \
  --name $aksName \
  --overwrite-existing
