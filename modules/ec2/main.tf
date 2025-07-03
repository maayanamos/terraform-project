# This module provisions an EC2 instance inside a public subnet with an attached security group.
# It installs Nginx and sets a custom HTML message via user data.

resource "aws_instance" "vm" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  key_name      = var.key_name 

  user_data = <<-EOF
              #!/bin/bash
              # Install Nginx and serve a custom HTML message
              apt-get update
              apt-get install -y nginx
              echo '<h1>${var.html_message}</h1>' > /var/www/html/index.html
              systemctl enable nginx
              systemctl start nginx
              EOF

  vpc_security_group_ids = [aws_security_group.ec2_sg.id]

  tags = {
    Name = "ubuntu-instance"
  }
}

# Define a security group allowing HTTP and SSH access
resource "aws_security_group" "ec2_sg" {
  name        = var.sg_name
  description = "Allow HTTP"
  vpc_id = var.vpc_id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] 
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  lifecycle {
    create_before_destroy = true
  }
}
