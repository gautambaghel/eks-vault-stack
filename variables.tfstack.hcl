variable "region" {
  type = string
}

variable "identity_token_file" {
  type = string
}

variable "role_arn" {
  type = string
}

variable "name" {
  type        = string
  default     = "vault"
}

variable "tags" {
  type = map(string)
  default = {
    GithubRepo = "github.com/gautambaghel/eks-vault-stack"
  }
}

variable "azs" {
  type    = list(string)
  default = ["us-west-2a", "us-west-2b", "us-west-2c"]
}

variable "cluster_version" {
  type        = string
  description = "Kubernetes version to use for EKS Cluster"
  default     = "1.28"
}

variable "vpc_cidr" {
  type        = string
  description = "VPC CIDR"
  default     = "10.0.0.0/16"
}

variable "instances" {
  type = number
  default = 1
}
