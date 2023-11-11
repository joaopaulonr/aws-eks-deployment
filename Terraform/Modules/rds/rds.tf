resource "aws_db_instance" "my_db" {
  db_name                = var.db_name
  allocated_storage      = var.allocation_storage
  storage_type           = var.storage_type
  engine                 = var.engine
  engine_version         = var.engine_version
  instance_class         = var.instance_class
  username               = var.username
  password               = var.password
  port                   = var.port
  identifier             = var.identifier
  skip_final_snapshot    = true
  vpc_security_group_ids = [var.security_group_rds]
  db_subnet_group_name   = aws_db_subnet_group.my_db_subnet_group.id
  multi_az               = true
  storage_encrypted      = true
}
