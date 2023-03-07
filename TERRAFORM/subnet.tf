# Subnet Public
resource "aws_subnet" "sas_public_subnet" {
  vpc_id            = aws_vpc.sas_vpc.id
  cidr_block        = "172.32.1.0/24"
  availability_zone = "eu-west-3a"
  tags = {
    APP = "SAS"
  }
}

# Subnet Private
resource "aws_subnet" "sas_private_subnet" {
  vpc_id            = aws_vpc.sas_vpc.id
  cidr_block        = "172.32.2.0/24"
  availability_zone = "eu-west-3a"
  tags = {
    APP = "SAS"
  }
}
