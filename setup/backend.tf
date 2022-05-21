terraform {
  backend "s3" {
    bucket               = "sonikro-terraform"
    key                  = "terraform.tfstate"
    workspace_key_prefix = "github-runners-cluster/deployments"
    region               = "us-east-1"
  }
}
