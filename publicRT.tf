resource "aws_route_table" "terraform_project_public" {
  vpc_id = aws_vpc.terraform_project_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.terraform_project_igw.id
  }

  tags = {
    Name = "terraform project public route table"
  }


}