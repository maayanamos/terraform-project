output "vpc_id" {
  description = "The ID of the created VPC"
  value       = module.vpc.vpc_id
}

output "subnet_id" {
  description = "The ID of the created subnet"
  value       = module.vpc.subnet_id
}

output "internet_gateway_id" {
  description = "The ID of the Internet Gateway attached to the VPC"
  value       = module.vpc.internet_gateway_id
}

output "route_table_id" {
  description = "The ID of the route table associated with the subnet"
  value       = module.vpc.route_table_id
}

output "route_table_association_id" {
  description = "The ID of the association between the route table and the subnet"
  value       = module.vpc.route_table_association_id
}

output "ec2_A_public_ip" {
  description = "The public IP of the EC2 A instance"
  value       = module.ec2_A.public_ip
}

output "ec2_B_public_ip" {
  description = "The public IP of the EC2 B instance"
  value       = module.ec2_B.public_ip
}

output "s3_bucket_name" {
  description = "The name of the created S3 bucket"
  value       = module.s3.bucket_name
}

output "s3_website_url" {
  description = "The URL of the S3 static website"
  value       = module.s3.website_url
}

output "iam_user_name" {
  description = "The name of the created IAM user"
  value       = module.iam.iam_user_name
}