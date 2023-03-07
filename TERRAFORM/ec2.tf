# Create the EC2 Instance
resource "aws_instance" "sas_server" {
  ami                    = "ami-0ca5ef73451e16dc1"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.sas_public_subnet.id
  vpc_security_group_ids = [aws_security_group.sas_security_group_server.id]
  tags = {
    APP = "SAS"
  }
}
