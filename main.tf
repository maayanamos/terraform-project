# VPC -module
module "vpc" {
  source    = "./modules/vpc"
  vpc_cidr  = var.vpc_cidr
}

#EC2 -module
#EC2_A:
module "ec2_A" {
  source         = "./modules/ec2"
  sg_name        = "ec2_A_sg"
  ami_id         = var.ami_id
  instance_type  = var.instance_type
  subnet_id      = module.vpc.subnet_id
  vpc_id         = module.vpc.vpc_id  
  key_name      = var.key_name 
  html_message   = "Hello from EC2 A Maayan"
}

#EC2-B:
module "ec2_B" {
  source         = "./modules/ec2"
  sg_name        = "ec2_B_sg"
  ami_id         = var.ami_id
  instance_type  = var.instance_type
  subnet_id      = module.vpc.subnet_id
  vpc_id         = module.vpc.vpc_id  
  key_name      = var.key_name 
  html_message   = "Hello from EC2 B Maayan"
}

# S3 module
module "s3" {
  source      = "./modules/s3"
  bucket_name = var.bucket_name
}

#IAM USER module
module "iam" {
  source     = "./modules/iam"
  user_name     = var.user_name
  policy_arn = var.policy_arn
  profile_name = var.profile_name
}
