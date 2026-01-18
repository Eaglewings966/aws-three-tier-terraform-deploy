output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.vpc-main.id
}

output "public_subnet_ids" {
  description = "List of public subnet IDs"
  value       = aws_subnet.public_subnet[*].id
}

output "private_subnet_ids" {
  description = "List of private subnet IDs"
  value       = aws_subnet.private_subnet[*].id
}

output "private_subnet_db_ids" {
  description = "List of private subnet IDs for database"
  value       = aws_subnet.private_subnet_db[*].id
}

output "default_security_group_id" {
  description = "Default security group ID"
  value       = aws_vpc.vpc-main.default_security_group_id
}

output "mysql_security_group_id" {
  description = "MySQL security group ID"
  value       = aws_security_group.mysql_sg.id
}
