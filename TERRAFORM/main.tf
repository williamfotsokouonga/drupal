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
