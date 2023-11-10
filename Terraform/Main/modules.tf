# Modules

module "network" {
  source = "../Modules/network"
}

module "sec-groups" {
  source = "../Modules/security-groups"
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
  source = "../Modules/rds"
}

module "efs" {
  source = "../Modules/efs"
}

module "eks" {
  source = "../Modules/eks"
}

module "iam" {
  source = "../Modules/iam"
}

