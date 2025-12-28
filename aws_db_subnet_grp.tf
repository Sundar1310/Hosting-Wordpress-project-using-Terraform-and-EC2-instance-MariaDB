resource "aws_db_subnet_group" "terraform_project_private_subnet_group" {
  name       = "terraform_project_private_subnet_group"
  subnet_ids = [aws_subnet.terraform_project_private_subnet_a.id, aws_subnet.terraform_project_private_subnet_b.id]

  tags = {
    Name = "terraform project private subnet group"
  }

}