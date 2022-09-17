resource "aws_db_instance" "db" {
  allocated_storage    = var.storage_size
  engine               = var.engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  db_name              = var.db_name
  username             = var.db_username
  password             = var.db_password
  skip_final_snapshot  = var.skip_final_snapshot

  tags = var.tags
}