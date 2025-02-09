module "vpc" {
  source = "../../terraform-aws-vpc"
  #source = "git::https://github.com/SatishPolaka/terraform-aws-vpc.git?ref=main"
  project_name = "expense"
  environment = "dev"
  vpc_cidr = "10.0.0.0/16"
  common_tags = var.common_tags
  vpc_tags = var.vpc_tags
  public_subnet_cidrs = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  database_subnet_cidrs = var.database_subnet_cidrs
  is_peering_required = true
}