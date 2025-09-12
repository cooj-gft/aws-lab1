# Llamamos a la vpc de networking
module "networking" {
  source = "./networking"
}

# Llamamos a la parte de RDS
module "rds" {
  source      = "./rds"
  db_username = var.db_username
  db_password = var.db_password
  db_name     = var.db_name
  security_group_id  = module.networking.db_sg_id
  db_subnet_group  = module.networking.db_subnet_group
}

module "ec2" {
  source = "./ec2"
  subnet_id = module.networking.public_subnet_id
  security_group_id = module.networking.db_sg_id

}