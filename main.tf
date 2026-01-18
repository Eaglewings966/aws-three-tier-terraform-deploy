# VPC Module
module "vpc" {
  source = "./module-vpc"

  vpc_cidrblock     = var.vpc_cidrblock
  environment       = var.environment
  create_subnet     = var.create_subnet
  countsub          = var.countsub
  create_elastic_ip = var.create_elastic_ip
}

# EKS Module
module "eks" {
  source = "./module-eks"

  public_subnet_ids  = module.vpc.public_subnet_ids
  private_subnet_ids = module.vpc.private_subnet_ids
  domain_name        = var.domain_name
  email              = var.email
  repository_name    = var.repository_name
  cluster_name       = var.cluster_name

  vpc_cidrblock  = var.vpc_cidrblock
  environment    = var.environment
  desired_size   = var.desired_size
  max_size       = var.max_size
  min_size       = var.min_size
  instance_types = var.instance_types
  capacity_type  = var.capacity_type
  eks_version    = var.eks_version
  ami_type       = var.ami_type
  label_one      = var.label_one

  create_subnet     = var.create_subnet
  countsub          = var.countsub
  create_elastic_ip = var.create_elastic_ip
}

# Database Module
module "database" {
  source = "./module-database"

  environment            = var.environment
  db_instance_class      = var.db_instance_class
  db_allocated_storage   = var.db_allocated_storage
  db_username            = var.db_username
  db_password            = var.db_password
  db_name                = var.db_name
  aws_security_group_ids = module.vpc.mysql_security_group_id
  private_subnet_db_ids  = module.vpc.private_subnet_db_ids
}

# DNS Module
# module "dns" {
# source = "./module-dns"

#  enabled     = var.create_dns_records
# domain_name = var.domain_name
# environment = var.environment
# }
