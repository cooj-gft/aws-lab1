output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

output "private_subnet_ids" {
  description = "The IDs of the private subnets"
  value       = [aws_subnet.private_1.id, aws_subnet.private_2.id]
}

output "db_subnet_group" {
  description = "The DB subnet group name"
  value       = aws_db_subnet_group.rds_subnet_group.name
}

output "db_sg_id" {
  description = "The security group ID for the RDS instance"
  value       = aws_security_group.rds_sg.id
}
