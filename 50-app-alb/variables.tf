variable "project_name" {
  default = "expense"
}

variable "environment" {
  default = "dev"
}

variable "common_tags" {
  default = {
    Project = "expense"
    Environment = "dev"
    Terraform = "true"
  }
}

variable "zone_id" {
  default = "Z0803459PJ1N35XG9RQT"
  
}

variable "domain_name" {
    default = "psrexpense.store"
}