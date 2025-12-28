resource "aws_db_instance" "default" {
  allocated_storage      = 10
  db_name                = "MywordpressDB"
  engine                 = "mysql"
  engine_version         = "8.0.41"
  instance_class         = "db.t4g.micro"
  username               = "admin"
  password               = "admin123"
  parameter_group_name   = "default.mysql8.0"
  skip_final_snapshot    = true
  db_subnet_group_name   = aws_db_subnet_group.terraform_project_private_subnet_group.name
  vpc_security_group_ids = [aws_security_group.allow_mysql.id]

}