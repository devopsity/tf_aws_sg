###############################################
# Module: AWS security group variables
###############################################

// Global
variable "region" {}
variable "region_code" {}
variable "env" {}
variable "environment" {}
variable "team" {}
variable "deploytag" {}

variable "security_group_name" {
  description = "The name for the security group"
}

variable "vpc_id" {
  description = "The VPC this security group will go in"
}