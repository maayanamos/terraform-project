# CIDR block for the VPC
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "availability_zone" {
  type        = string
  description = "The Availability Zone to deploy the subnet in"
  default     = "us-east-1a"
}
