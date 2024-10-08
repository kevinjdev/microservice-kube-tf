variable "aws_region" {
  description = "The AWS region to deploy services to"
  type        = string
}

variable "required_tags" {
  description = "Map of required tags"
  type        = map(string)
}

variable "cluster_name" {
  description = "EKS Cluster Name"
  type        = string
}

variable "fargate_profile_name" {
  description = "Fargate profile name"
  type        = string
}

variable "namespace" {
  description = "Fargate profile namespace"
}

