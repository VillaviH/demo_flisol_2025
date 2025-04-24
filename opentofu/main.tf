provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source       = "./modules/vpc"
  aws_region   = var.aws_region
  project_name = var.project_name
  environment  = var.environment
}

module "ecr" {
  source       = "./modules/ecr"
  project_name = var.project_name
  environment  = var.environment
}

module "ecs" {
  source             = "./modules/ecs"
  aws_region         = var.aws_region
  project_name       = var.project_name
  environment        = var.environment
  vpc_id             = module.vpc.vpc_id
  public_subnet_ids  = module.vpc.public_subnet_ids
  ecr_repository_url = module.ecr.repository_url
}

########## Monitoring Module ##########
module "monitoring" {
  source             = "./modules/monitoring"
  project_name       = var.project_name
  environment        = var.environment
  ecs_cluster_id     = module.ecs.ecs_cluster_name
  subnet_ids         = module.vpc.public_subnet_ids
  security_group_id  = module.vpc.default_security_group_id
  execution_role_arn = module.ecs.execution_role_arn
  task_role_arn      = module.ecs.task_role_arn
  aws_region         = var.aws_region
}