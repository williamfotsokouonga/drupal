
# Create the security group for SSH, HTTP and HTTPS SAS SERVER
resource "aws_security_group" "sas_security_group_server" {
  name_prefix = "sas_server_security_group_"
  vpc_id      = data.aws_vpc.default_vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
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
  vpc_id      = data.aws_vpc.default_vpc.id

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["172.31.32.0/20"]
  }

}