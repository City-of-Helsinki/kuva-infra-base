#!/bin/bash
echo "run pod_cleaner"

# Loop through all Namespaces
for namespace in $(kubectl get namespace -o=json |  jq -r '.items[] .metadata.name') ; do
  echo "Processing namespace ${namespace}"
done

#  failed pods to clean
kubectl get po --field-selector status.phase=Failed --all-namespaces --no-headers

# clean failed pods
kubectl get po --field-selector status.phase=Failed --all-namespaces --no-headers | awk '{print $2 " --namespace=" $1}' | xargs -n2 kubectl delete pod
