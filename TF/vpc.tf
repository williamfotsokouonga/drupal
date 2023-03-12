# Create the VPC
resource "aws_vpc" "sas_vpc" {

  cidr_block = "172.32.0.0/16"
  tags = {
    APP = "SAS"
  }

}
