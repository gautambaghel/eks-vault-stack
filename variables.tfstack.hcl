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
  type = string
}

variable "tags" {
  type = map(string)
}

variable "azs" {
  type = list(string)
}

variable "cluster_version" {
  type = string
}

variable "vpc_cidr" {
  type = string
}

variable "instances" {
  type = number
}
