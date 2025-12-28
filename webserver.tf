resource "aws_instance" "terraform_project_wordpress" {
  ami           = "ami-00ca570c1b6d79f36"
  instance_type = "t3.micro"
  key_name      = "terraform"

  root_block_device {
    volume_size = 30
    volume_type = "gp3"
  }

  subnet_id              = aws_subnet.terraform_project_public_subnet.id
  vpc_security_group_ids = [aws_security_group.allow_ssh_http.id]

  tags = {
    Name = "Wordpress Server"
  }

}