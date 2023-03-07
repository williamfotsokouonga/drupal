resource "aws_network_acl" "sas_network_acl" {
  vpc_id     = aws_vpc.sas_vpc.id
  subnet_ids = [aws_subnet.sas_public_subnet.id, aws_subnet.sas_private_subnet.id]

  ingress {
    rule_no    = 100
    protocol   = "all"
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 65535

  }

  egress {
    rule_no    = 100
    protocol   = "all"
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 65535
  }

  tags = {
    APP = "SAS"
  }
}
