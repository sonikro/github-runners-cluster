variable "cluster_name" {
  default     = "sonikro-eks"
  description = "Name of the EKS cluster"
}

variable "region" {
  default = "us-east-1"
}

variable "personal_access_token" {
  description = "value of the personal access token for github"
  type        = string
}

variable "runner_name" {
  description = "Name of the Runners"
  default     = "sonikro-action-runner"
}

variable "organization" {
  description = "Github Orgainzation that runners will be registered"
  default     = "sonikro-org"
}

variable "runner_namespace" {
  default = "actions-runner-system"
}
