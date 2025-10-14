output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.vpc_lab1_camilo.id
}

output "private_subnet_ids" {
  description = "The IDs of the private subnets"
  value       = [aws_subnet.snpriv_lab1_camilo.id, aws_subnet.snpriv2_lab1_camilo.id]

}

output "db_subnet_group" {
  description = "The DB subnet group name"
  value       = aws_db_subnet_group.sngr_lab1_camilo.name
}

output "db_sg_id" {
  description = "The security group ID for the RDS instance"
  value       = aws_security_group.secgr_lab1_camilo.id
}

output "public_subnet_id" {
  description = "The IDs of the public subnets"
  value       = aws_subnet.snpub2_lab1_camilo.id
}