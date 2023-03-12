resource "aws_internet_gateway" "sas_ig" {
  vpc_id = aws_vpc.sas_vpc.id
}
