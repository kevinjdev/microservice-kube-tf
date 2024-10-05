variable "aws_region" {
  description = "The AWS region to deploy services to"
  type        = string
}

variable "required_tags" {
  description = "Map of required tags"
  type        = map(string)
}

variable "tf_bucket_name" {
  description = "Bucket name to store tf state"
  type        = string
}
