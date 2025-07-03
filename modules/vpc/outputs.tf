output "vpc_id" {
  description = "The ID of the created VPC"
  value = aws_vpc.main.id
}

output "subnet_id" {
  description = "The ID of the public subnet"
  value = aws_subnet.main.id
}

output "internet_gateway_id" {
  description = "The ID of the Internet Gateway attached to the VPC"
  value       = aws_internet_gateway.main.id
}

output "route_table_id" {
  description = "The ID of the main route table associated with the subnet"
  value       = aws_route_table.public_rt.id
}

output "route_table_association_id" {
  description = "The ID of the route table association for the subnet"
  value       = aws_route_table_association.subnet_association.id
}