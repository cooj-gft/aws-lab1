# Subnet privada 1
resource "aws_subnet" "snpriv_lab1_camilo" {
  vpc_id                  = aws_vpc.vpc_lab1_camilo.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-2a"
  map_public_ip_on_launch = false

  tags = {
    Name = "snpriv_lab1_camilo"
  }
}

# Subnet privada 2
resource "aws_subnet" "snpriv2_lab1_camilo" {
  vpc_id                  = aws_vpc.vpc_lab1_camilo.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "us-east-2b"
  map_public_ip_on_launch = false

  tags = {
    Name = "snpriv2_lab1_camilo"
  }
}

# Subnet group para RDS
resource "aws_db_subnet_group" "sngr_lab1_camilo" {
  name       = "rds-subnet-group"
  subnet_ids = [aws_subnet.snpriv_lab1_camilo.id, aws_subnet.snpriv2_lab1_camilo.id]

  tags = {
    Name = "sngr_lab1_camilo"
  }
}
