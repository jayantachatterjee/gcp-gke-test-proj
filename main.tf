module "vm" {
  source = "./module/vm"
  name = var.name
}

module "vpc" {
  source = "./module/vpc"
  vpc_name = var.vpc_name
  public_subnet_cidr = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
}