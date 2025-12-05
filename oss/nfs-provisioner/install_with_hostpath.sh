#!/bin/bash

helm repo add nfs-subdir-external-provisioner https://kubernetes-sigs.github.io/nfs-subdir-external-provisioner/

helm install nfs-provisioner nfs-subdir-external-provisioner/nfs-subdir-external-provisioner \
  --namespace nfs-provisioner \
  --set nfs.server=${K8S_M1_IP} \
  --set nfs.path=/data \
  --set nfs.mountOptions="{vers=3,rsize=1048576,wsize=1048576,noatime,nodiratime,async,hard}" \
  --set storageClass.name=nfs-client \
  --set storageClass.defaultClass=true
