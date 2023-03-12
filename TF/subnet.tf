# Create a public subnet
resource "aws_subnet" "sas_public_subnet" {
  vpc_id     = aws_vpc.example_vpc.id
  cidr_block = "172.32.1.0/24"
  tags = {
    APP = "SAS"
  }
}

# Create a private subnet
resource "aws_subnet" "sas_private_subnet" {
  vpc_id     = aws_vpc.example_vpc.id
  cidr_block = "172.32.2.0/24"
  tags = {
    APP = "SAS"
  }
}
