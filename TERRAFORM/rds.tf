# Create the RDS instance
resource "aws_db_instance" "sas_rds_instance" {

  engine                  = "mariadb"
  engine_version          = "10.6.10"
  instance_class          = "db.t4g.micro"
  allocated_storage       = 20
  max_allocated_storage   = 25
  availability_zone       = "eu-west-3a"
  backup_retention_period = 30
  port                    = 3306
  storage_type            = "gp2"
  identifier              = "my-rds-instance"
  db_name                 = "simplyaccountingservices_db"
  username                = "admin_sas"
  password                = "password_sas"
  vpc_security_group_ids  = [aws_security_group.sas_security_group_database.id]
}
