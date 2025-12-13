#!/bin/bash
set -e

apt-get update -y
snap install kubectl --classic
curl -fsSL https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash
curl -sL https://aka.ms/InstallAzureCLIDeb | bash
apt-get install -y nginx
