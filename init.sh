#!/bin/bash
set -e

apt-get update -y
KUBECTL_VERSION="v1.34.0"

curl -LO "https://dl.k8s.io/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl"
chmod +x kubectl
mv kubectl /usr/local/bin/kubectl
curl -fsSL https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash
curl -sL https://aka.ms/InstallAzureCLIDeb | bash
apt-get install -y nginx
