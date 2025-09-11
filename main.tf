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

  vpc_id             = module.networking.vpc_id
  private_subnet_ids = module.networking.private_subnet_ids
  security_group_id  = module.networking.db_sg_id
}
