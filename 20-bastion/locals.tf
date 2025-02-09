locals {
  public_subnet_id = split(",", data.aws_ssm_parameter.public_subnets_ids.value)[0]
}