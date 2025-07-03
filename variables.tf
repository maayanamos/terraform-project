variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-east-1" 
}

# CIDR VPC
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"  #change the default
}

# EC2
variable "instance_type" {
  description = "Type of EC2 instance"
  type        = string
  default     = "t2.micro"
}

# AMI ID 
variable "ami_id" {
  description = "AMI ID for the EC2 instances"
  type        = string
}

# S3 bucket
variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}

#Availability Zone
variable "availability_zone" {
  description = "The availability zone for the subnet"
  type        = string
}

variable "key_name" {
  description = "Name of the SSH key pair to use"
  type        = string
}

variable "user_name" {
  description = "The IAM user name"
  type        = string
  default     = "terraform-project-user"
}

variable "policy_arn" {
  description = "ARN of the IAM policy to attach to the user"
  type        = string
}

variable "profile_name" {
  description = "The AWS CLI profile to use"
  type        = string
  default     = "terraform-user"
}
