resource "aws_security_group" "secgr_lab1_camilo" {
  name        = "secgr_lab1_camilo"
  description = "Allow MySQL inbound traffic"
  vpc_id      = aws_vpc.vpc_lab1_camilo.id

  # Reglas de entrada (inbound)
  ingress {
    description = "MySQL from specific IP"
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] 
  }

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Reglas de salida (outbound)
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "secgr_lab1_camilo"
  }
}
