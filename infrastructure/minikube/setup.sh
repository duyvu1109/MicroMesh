#!/bin/bash

set -e

# Deploy multiple clusters by using minikube
# https://kubernetes.io/docs/tasks/tools/install-minikube/
# 2 clusters: cluster-1 and cluster-2
minikube start --driver=docker -p cluster-1
minikube start --driver=docker -p cluster-2
