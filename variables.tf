variable "region" {
  description = "AWS region where resources will be created"
  type        = string
  default     = "us-east-1"
}

variable "aws_profile" {
  description = "AWS CLI profile to use for authentication"
  type        = string
  default     = "terraform-admin"
}

variable "bucket_name" {
  description = "Base name for the S3 bucket (random suffix will be added)"
  type        = string
}
