# Modules

module "network" {
  source = "../Modules/network"
}

module "security-groups" {
  source     = "../Modules/security-groups"
  vpc_id     = module.network.vpc_id
  depends_on = [module.network]
}

module "auto-scaling" {
  source = "../Modules/auto-scaling"
}

module "app-load-balancer" {
  source = "../Modules/app-load-balancer"
}

module "cloud-watch" {
  source = "../Modules/cloud-watch"
}

module "route-53" {
  source = "../Modules/route53"
}

module "rds" {
  source              = "../Modules/rds"
  security_group_rds  = module.security-groups.security_rds
  my_subnet_private01 = module.network.subnet-private-01
  my_subnet_private02 = module.network.subnet-private-02
  depends_on          = [module.network]
}

module "efs" {
  source              = "../Modules/efs"
  security_group_efs  = module.security-groups.security_efs
  my_subnet_private01 = module.network.subnet-private-01
  my_subnet_private02 = module.network.subnet-private-02
  depends_on          = [module.rds]
}

module "eks" {
  source = "../Modules/eks"
}

module "iam" {
  source = "../Modules/iam"
}

