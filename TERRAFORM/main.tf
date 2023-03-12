terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.50.0"
    }
  }

  required_version = ">= 1.3.9"

}

provider "aws" {
  profile = "default"
  region  = "eu-west-3"
}

variable "engine" {}
variable "engine_version" {}
variable "instance_class" {}
variable "name" {}
variable "username" {}
variable "password" {}
variable "parameter_group_name" {}
variable "allocated_storage" {}
variable "max_allocated_storage" {}
variable "availability_zone" {}
variable "skip_final_snapshot" {}
variable "backup_retention_period" {}
variable "port" {}
variable "storage_type" {}
variable "identifier" {}
variable "db_name" {}
variable "key_name" {}

# Get Default VPC information
data "aws_vpc" "default_vpc" {
  id = "vpc-a215d5ca" # Enter your VPC ID here
}

# Get default subnet 1 information
data "aws_subnet" "default_subnet_aza" {
  id = "subnet-c25cb3aa" # Enter your subnet ID here
}

# Get default subnet 2 information
data "aws_subnet" "default_subnet_azb" {
  id = "subnet-155b5a6e" # Enter your subnet ID here
}

# Get default subnet 2 information
data "aws_subnet" "default_subnet_azc" {
  id = "subnet-bfeba0f2" # Enter your subnet ID here
}
