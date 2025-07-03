resource "aws_iam_user" "terraform_user" {
  name = var.user_name
}

resource "aws_iam_user_policy_attachment" "attach_policy" {
  user       = aws_iam_user.terraform_user.name
  policy_arn = var.policy_arn
}

resource "aws_iam_access_key" "terraform_user_key" {
  user = aws_iam_user.terraform_user.name
}


resource "null_resource" "write_credentials" {
  depends_on = [aws_iam_access_key.terraform_user_key]

  provisioner "local-exec" {
    command = <<EOT
mkdir -p ~/.aws
echo "[${var.profile_name}]" >> ~/.aws/credentials
echo "aws_access_key_id = ${aws_iam_access_key.terraform_user_key.id}" >> ~/.aws/credentials
echo "aws_secret_access_key = ${aws_iam_access_key.terraform_user_key.secret}" >> ~/.aws/credentials
EOT
  }
}
