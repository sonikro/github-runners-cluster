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

variable "webhook_secret" {
  description = "value of the webhook secret"
  type        = string
}
