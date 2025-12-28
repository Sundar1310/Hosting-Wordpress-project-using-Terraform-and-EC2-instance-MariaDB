resource "aws_subnet" "terraform_project_public_subnet" {
  vpc_id     = aws_vpc.terraform_project_vpc.id
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "terraform project public subnet"
  }
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = true

}

resource "aws_subnet" "terraform_project_private_subnet_a" {
  vpc_id     = aws_vpc.terraform_project_vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "terraform project private subnet_a"
  }
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = false

}


resource "aws_subnet" "terraform_project_private_subnet_b" {
  vpc_id     = aws_vpc.terraform_project_vpc.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "terraform project private subnet_b"
  }
  availability_zone       = "ap-south-1b"
  map_public_ip_on_launch = false

}