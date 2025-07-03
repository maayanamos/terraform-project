output "access_key_id" {
  value = aws_iam_access_key.terraform_user_key.id
}

output "secret_access_key" {
  value     = aws_iam_access_key.terraform_user_key.secret
  sensitive = true
}

output "iam_user_name" {
  description = "The name of the created IAM user"
  value       = aws_iam_user.terraform_user.name
}