output "rds_endpoint" {
  description = "RDS instance endpoint"
  value       = aws_db_instance.rds_lab1_camilo.endpoint
}

output "rds_id" {
  description = "RDS instance ID"
  value       = aws_db_instance.rds_lab1_camilo.id
}
