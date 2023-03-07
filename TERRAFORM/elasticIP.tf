# ELASTICIP
resource "aws_eip" "sas_eip" {
  instance = aws_instance.sas_server.id
  vpc      = true
}
