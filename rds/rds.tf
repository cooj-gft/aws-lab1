resource "aws_db_instance" "mysql" {
  allocated_storage    = 20                       # 20 GB mínimo
  engine               = "mysql"
  engine_version       = "8.0"                    # versión MySQL
  instance_class       = "db.t3.micro"            # la más pequeña
  identifier           = "rds-mysql-demo"
  username             = var.db_username
  password             = var.db_password
  db_name              = var.db_name

  db_subnet_group_name   = var.db_subnet_group
  vpc_security_group_ids = [var.security_group_id]

  skip_final_snapshot  = true   # ⚠️ solo para pruebas, en producción NO recomendado
  publicly_accessible  = false  # mantenerlo privado en las subnets
  multi_az             = false  # no usamos multi-AZ para ahorrar costo

  tags = {
    Name = "rds-mysql-instance"
  }
}
