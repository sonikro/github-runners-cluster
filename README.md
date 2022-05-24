# github-runners-cluster

[![Terraform](https://github.com/sonikro/github-runners-cluster/actions/workflows/terraform.yaml/badge.svg)](https://github.com/sonikro/github-runners-cluster/actions/workflows/terraform.yaml)

This repository contains infrastructure-as-code to deploy a K8S Cluster that will be used to run Github Runners

The idea behind this repository, is to be an 100% Infrastructure-as-code repository to setup a new EKS Cluster from scratch, and set it up to run Github Runners for your Github Org/Enterprise
## Authenticating to the K8S Cluster

Using AWS CLI, just run

```bash
aws eks --region us-east-1 update-kubeconfig --name $(terraform output -raw cluster_id)
```

## Accessing the Kubernetes Dashboard

After being authenticated to the cluster, run:

```bash
kubectl port-forward svc/kubernetes-dashboard -n kubernetes-dashboard 6443:443
```

Now access it at [https://127.0.0.1:6443/#/login](https://127.0.0.1:6443/#/login)

Now, you need to generate a Bearer token for the **eks-admin** service account.

```bash
kubectl -n kube-system describe secret $(kubectl -n kube-system get secret | grep eks-admin | awk '{print $1}')
```

Copy the Token, and use it to authenticate to the Dashboard