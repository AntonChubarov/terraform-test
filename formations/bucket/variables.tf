variable "region" {
  description = "The AWS region"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "The name of the Environment"
  type        = string
  default     = "dev"
}
