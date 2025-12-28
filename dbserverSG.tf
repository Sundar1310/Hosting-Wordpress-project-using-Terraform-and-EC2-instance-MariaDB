resource "aws_security_group" "allow_mysql" {
  name        = "allow_mysql"
  description = "Allow mysql port inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.terraform_project_vpc.id

  tags = {
    Name = "allow mysql port"
  }

}

resource "aws_vpc_security_group_ingress_rule" "allow_mysql_ipv4" {
  security_group_id = aws_security_group.allow_mysql.id
  cidr_ipv4         = "10.0.0.0/24"
  from_port         = 3306
  ip_protocol       = "tcp"
  to_port           = 3306

}


resource "aws_vpc_security_group_egress_rule" "mysql_allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.allow_mysql.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1"

}