variable "region" {
  description = "The AWS region."
}

variable "environment" {
  description = "The name of our environment, i.e. development."
}

variable "key_name" {
  description = "The AWS key pair to use for resources."
}

variable "vpc_cidr" {
  description = "The CIDR of the VPC."
}

variable "public_subnets" {
  default     = []
  description = "The list of public subnets to populate."
}

variable "private_subnets" {
  default     = []
  description = "The list of private subnets to populate."
}

variable "ami" {
  default = {
    "ap-south-1" = "ami-00b6a8a2bd28daf19"
    "ap-south-1" = "ami-5b673c34"
 }

  description = "The AMIs to use for web and app instances."
}

variable "instance_type" {
  default     = "t2.micro"
  description = "The instance type to launch "
}

variable "vpc_id" {
  description = "The VPC ID to launch in"
}

output "vpc_id" {
  value = "${aws_vpc.environment.id}"
}

output "vpc_cidr" {
  value = "${aws_vpc.environment.cidr_block}"
}

output "public_subnet_ids" {
  value = "${aws_subnet.public.*.id}"
}

output "private_subnet_ids" {
  value = "${aws_subnet.private.*.id}"
}