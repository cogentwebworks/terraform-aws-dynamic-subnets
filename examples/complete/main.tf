provider "aws" {
  region = var.region
}

module "vpc" {
<<<<<<< HEAD
  source     = "/Users/dearteno/Workspaces/Iac/terraform_modules/terraform-aws-vpc"
  namespace  = var.namespace
  stage      = var.stage
  name       = var.name
=======
  source     = "git::https://github.com/cloudposse/terraform-aws-vpc.git?ref=tags/0.16.2"
>>>>>>> ec96ab484f19fe8dfeb88048ed4dcebc3874c5ca
  cidr_block = "172.16.0.0/16"

  # Obsolete, until VPC module is updated, then use
  # context = module.this.context
  namespace = module.this.context.namespace
  stage     = module.this.context.stage
  name      = module.this.context.name
}

module "subnets" {
  source                   = "../../"
  availability_zones       = var.availability_zones
  vpc_id                   = module.vpc.vpc_id
  igw_id                   = module.vpc.igw_id
  cidr_block               = module.vpc.vpc_cidr_block
  nat_gateway_enabled      = false
  nat_instance_enabled     = false
  aws_route_create_timeout = "5m"
  aws_route_delete_timeout = "10m"

  context = module.this.context
}
