# kuva-infra-base
This project contains installation for base, maintain, 3rdparty, etc. applications on KuVa Kubernetes environments.
Applications are installed with GitHub workflows to make installation and maintaining easier.

## Kubernetes cluster maintain

### Staging cluster pod cleaner 

Terminated and failed pods are leaved on Kubernetes staging cluster and those requires manual investigation and  cleaning action. Staging cluster has set node autoupgrade and nodes are updated every now and then. This will cause terminated pods without any real problems.

***kube_pod_cleaner***  removes failed and terminated pods from (staging) cluster. It is scheduled to run once a week.
