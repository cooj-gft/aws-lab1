resource "aws_security_group" "rds_sg" {
  name        = "rds-mysql-sg"
  description = "Allow MySQL inbound traffic"
  vpc_id      = aws_vpc.main.id

  # Reglas de entrada (inbound)
  ingress {
    description = "MySQL from specific IP"
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/32"]  # ⚠️ Reemplaza con tu IP pública
  }

  # Reglas de salida (outbound)
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "rds-mysql-sg"
  }
}
