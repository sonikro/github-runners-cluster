terraform {
  backend "s3" {
    bucket               = "sonikro-terraform"
    key                  = "github-runners-cluster-setup-k8s.tfstate"
    workspace_key_prefix = "github-runners-cluster-setup-k8s"
    region               = "us-east-1"
  }
}
