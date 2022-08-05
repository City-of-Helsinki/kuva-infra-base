#!/bin/bash
echo "run pod_cleaner"

# lsit pods in current namespace
kubectl get pod

# Loop through all Namespaces
for namespace in $(kubectl get namespace -o=json |  jq -r '.items[] .metadata.name') ; do
  echo "Processing namespace ${namespace}"
done