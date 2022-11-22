resource "aws_db_instance" "mysqldb" {
  allocated_storage = 20
  engine = "mysql"
  engine_version = "5.7"
  instance_class = "db.t2.micro"
  name = var.db_name
  username = var.username
  password = var.db_password
  parameter_group_name = "default.mysql5.7"
}
