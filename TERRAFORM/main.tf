terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.57.1"
    }
  }

  required_version = ">= 1.3.9"
  
}

provider "aws" {
  profile = "default"
  region  = "eu-west-3"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0ca5ef73451e16dc1"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
