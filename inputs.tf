variable "aws_region" {
  description = "The AWS region to deploy services to"
  type        = string
}

variable "required_tags" {
  description = "Map of required tags"
  type        = map(string)
}
