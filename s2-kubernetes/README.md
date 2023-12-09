# k8s-mongodb sample app

## Requirements

- minikube
- helm
- mongodb community chart: https://github.com/mongodb/helm-charts/tree/main/charts/community-operator
- mongodb UI (mongo-express) chart: https://artifacthub.io/packages/helm/cowboysysop/mongo-express
- prometheus chart: https://github.com/prometheus-community/helm-charts/tree/main/charts/kube-prometheus-stack

## install to local machine

Run the `./s2-kubernetes/run.sh` script

```shell
# example output
$ bash ./s2-kubernetes/run.sh

NAME: mongodb
LAST DEPLOYED: Sat Dec  9 14:08:13 2023
NAMESPACE: default
STATUS: deployed
REVISION: 1
```
