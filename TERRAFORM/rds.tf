# Create the RDS instance
resource "aws_db_instance" "sas_rds_instance" {

  #   engine                  = "mariadb"
  #   engine_version          = "10.6.10"
  #   instance_class          = "db.t4g.micro"
  #   allocated_storage       = 20
  #   max_allocated_storage   = 25
  #   availability_zone       = "eu-west-3a"
  #   backup_retention_period = 30
  #   port                    = 3306
  #   storage_type            = "gp2"
  #   identifier              = "my-rds-instance"
  #   db_name                 = "simplyaccountingservices_db"
  #   username                = "admin_sas"
  #   password                = "password_sas"
  #   db_subnet_group_name    = "sas_subnet_b"
  #   security_group_names    = [aws_security_group.sas_security_group_database.id]

  allocated_storage     = 20
  max_allocated_storage = 25
  engine                = var.engine
  engine_version        = var.engine_version
  instance_class        = var.instance_class
  name                  = var.name
  username              = var.username
  password              = var.password
  parameter_group_name  = var.parameter_group_name

}
