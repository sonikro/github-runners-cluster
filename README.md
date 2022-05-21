# github-runners-cluster

[![Terraform](https://github.com/sonikro/github-runners-cluster/actions/workflows/terraform.yaml/badge.svg)](https://github.com/sonikro/github-runners-cluster/actions/workflows/terraform.yaml)

This repository contains infrastructure-as-code to deploy a K8S Cluster that will be used to run Github Runners

The idea behind this repository, is to be an 100% Infrastructure-as-code repository to setup a new EKS Cluster from scratch, and set it up to run Github Runners for your Github Org/Enterprise
## Authenticating to the K8S Cluster

Using AWS CLI, just run

```bash
aws eks --region us-east-1 update-kubeconfig --name $(terraform output -raw cluster_id)
```
