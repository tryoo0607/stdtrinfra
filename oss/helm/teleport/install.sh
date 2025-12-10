#!/bin/bash

helm repo add teleport https://charts.releases.teleport.dev

helm repo update

helm install teleport-cluster teleport/teleport-cluster \
  --version 18.5.0 \
  --values cluster-values.yaml \
  --namespace teleport \
  --create-namespace