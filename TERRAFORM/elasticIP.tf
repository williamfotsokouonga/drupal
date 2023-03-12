# ELASTICIP
resource "aws_eip" "sas_eip" {
  instance = aws_instance.sas_ec2_frontend.id
  vpc      = true
}
