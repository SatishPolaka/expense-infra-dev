module "mysql_sg" {
  source = "../../terraform-aws-securitygroup"
  project_name = var.project_name
  environment = var.environment
  sg_name = "mysql"
  sg_description = "created for MYSQL instances in expense dev"
  common_tags = var.common_tags
  vpc_id = data.aws_ssm_parameter.vpc_id.value
}

module "backend_sg" {
  source = "../../terraform-aws-securitygroup"
  project_name = var.project_name
  environment = var.environment
  sg_name = "backend"
  sg_description = "created for backend instances in expense dev"
  common_tags = var.common_tags
  vpc_id = data.aws_ssm_parameter.vpc_id.value
}

module "frontend_sg" {
  source = "../../terraform-aws-securitygroup"
  project_name = var.project_name
  environment = var.environment
  sg_name = "frontend"
  sg_description = "created for frontend instances in expense dev"
  common_tags = var.common_tags
  vpc_id = data.aws_ssm_parameter.vpc_id.value
}


module "bastion_sg" {
  source = "../../terraform-aws-securitygroup"
  project_name = var.project_name
  environment = var.environment
  sg_name = "bastion"
  sg_description = "created for bastion instances in expense dev"
  common_tags = var.common_tags
  vpc_id = data.aws_ssm_parameter.vpc_id.value
}