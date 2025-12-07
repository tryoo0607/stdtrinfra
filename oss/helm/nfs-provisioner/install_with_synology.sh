#!/bin/bash

helm repo add nfs-subdir-external-provisioner https://kubernetes-sigs.github.io/nfs-subdir-external-provisioner/

helm install nfs-provisioner \
  nfs-subdir-external-provisioner/nfs-subdir-external-provisioner \
  --namespace nfs-provisioner \
  --set nfs.server=${SYNOLOGY_IP} \
  --set nfs.path=/volume1/k8s-volume \
  --set nfs.mountOptions="{nfsvers=4.1,noatime,nodiratime,async,hard,rsize=1048576,wsize=1048576,nolock}" \
  --set storageClass.name=nfs-client \
  --set storageClass.defaultClass=true \
