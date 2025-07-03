variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "The type of EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "html_message" {
  description = "The message to show in the EC2's index.html"
  type        = string
}

variable "sg_name" {
  type = string
  description = "Security group name"
}

variable "subnet_id" {
  type        = string
  description = "The ID of the subnet to launch the instance in"
}

variable "vpc_id" {
  description = "The VPC ID for the security group"
  type        = string
}

variable "key_name" {
  description = "The name of the SSH key pair to use for the instance"
  type        = string
}
