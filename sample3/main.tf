
# Create VPC using Terraform Module
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.9.0"

  
  # Details
  name            = var.name
  cidr            = var.cidr
  azs             = var.azs
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets

#  create_igw = var.enable_igw
  
  tags={
    Terraform = var.terraform_tag
    Environment = var.environemt_tag
  }
}





