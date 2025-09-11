output "rds_endpoint" {
  description = "RDS instance endpoint"
  value       = aws_db_instance.mysql.endpoint
}

output "rds_id" {
  description = "RDS instance ID"
  value       = aws_db_instance.mysql.id
}
