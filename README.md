AWS VPC module for Terraform
A lightweight VPC module for Terraform.

Usage

module "vpc" {
  source = "github.com/tinu-982325/tf_vpc/"

  environment = "vpc_name"
  key_name = "Amit-Personal"

  vpc_cidr = "10.0.0.0/16"
  public_subnets = ["10.0.1.0/24"]
  private_subnets = ["10.0.100.0/24"]
}
See interface.tf for additional configurable variables.
