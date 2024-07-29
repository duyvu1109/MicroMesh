#!/bin/bash

set -e

# Destroy minikube clusters by using minikube  
# https://kubernetes.io/docs/tasks/tools/install-minikube/
# 2 clusters: cluster-1 and cluster-2
echo "Destroying minikube..."

minikube delete -p cluster-1
minikube delete -p cluster-2