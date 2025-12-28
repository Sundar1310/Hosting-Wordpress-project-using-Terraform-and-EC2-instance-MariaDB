resource "aws_route_table_association" "terraform_project_publicrt_association" {
  subnet_id      = aws_subnet.terraform_project_public_subnet.id
  route_table_id = aws_route_table.terraform_project_public.id
}