variable "user_name" {
  description = "The name of the IAM user"
  type        = string
}

variable "policy_arn" {
  description = "The ARN of the policy to attach to the user"
  type        = string
}

variable "profile_name" {
  description = "The name of the profile to write in ~/.aws/credentials"
  type        = string
  default     = "terraform-user"
}
