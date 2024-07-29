#!/bin/bash

set -e

# Install Consul
helm repo add hashicorp https://helm.releases.hashicorp.com
# Verify that you have access to the consul chart
helm search repo hashicorp/consul

helm install consul hashicorp/consul --set global.name=consul --create-namespace --namespace consul

# Viewing the Consul UI
kubectl port-forward service/consul-server --namespace consul 8500:8500