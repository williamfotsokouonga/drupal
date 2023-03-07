
# Create the security group for SSH, HTTP and HTTPS SAS SERVER
resource "aws_security_group" "sas_security_group_server" {
  name_prefix = "sas_server_security_group_"
  vpc_id      = aws_vpc.sas_vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["10.2.0.0/16"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["10.2.0.0/16"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["10.2.0.0/16"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}


# Create the security group for SAS DATABASE
resource "aws_security_group" "sas_security_group_database" {
  name_prefix = "sas_db_security_group_"
  vpc_id      = aws_vpc.sas_vpc.id

  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["10.2.0.0/16"]
  }

}
