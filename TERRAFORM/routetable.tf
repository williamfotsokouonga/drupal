resource "aws_route_table" "sas_routetable" {
  vpc_id = aws_vpc.sas_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.sas_ig.id
  }
}
