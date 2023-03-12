# Create the RDS instance
resource "aws_db_instance" "sas_rds_backend" {

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

  allocated_storage       = var.allocated_storage
  max_allocated_storage   = var.max_allocated_storage
  engine                  = var.engine
  engine_version          = var.engine_version
  instance_class          = var.instance_class
  availability_zone       = var.availability_zone
  username                = var.username
  password                = var.password
  parameter_group_name    = var.parameter_group_name
  skip_final_snapshot     = var.skip_final_snapshot
  backup_retention_period = var.backup_retention_period
  port                    = var.port
  storage_type            = var.storage_type
  identifier              = var.identifier
  db_name                 = var.db_name

  #db_subnet_group_name    = "sas_subnet_b"
  #security_group_names = [aws_security_group.sas_security_group_database.id]

}
