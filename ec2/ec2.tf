resource "aws_instance" "ec2_lab1" {
  ami = "ami-0b09ffb6d8b58ca91"
  instance_type = "t3.micro" 
  subnet_id     = var.subnet_id
  vpc_security_group_ids = [var.security_group_id]

  user_data = <<-EOF
    #!/bin/bash
    sudo dnf install -y wget
    wget https://dev.mysql.com/get/mysql80-community-release-el9-3.noarch.rpm
    sudo dnf install -y mysql80-community-release-el9-3.noarch.rpm
    sudo rpm --import https://repo.mysql.com/RPM-GPG-KEY-mysql-2023
    sudo dnf update -y
    sudo dnf install -y mysql-community-server
  EOF

  tags = {
    Name = "lab1-ec2"
  }
}