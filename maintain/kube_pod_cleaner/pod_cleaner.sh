#!/bin/bash
# Loop through all Namespaces
echo "run pod_cleaner"
for namespace in $(kubectl get namespace -o=json |  jq -r '.items[] .metadata.name') ; do
  echo "Processing namespace ${namespace}"
done