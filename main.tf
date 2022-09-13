resource "aws_security_group" "naujas" {
  name        = "naujas"
  description = "Allow inbound traffic"
  vpc_id      = "vpc-0d6270325c0cad477"
tags = {
    Name = "naujas"
  }
  ingress {
    description      = " HP"
    from_port        = 1
    to_port          = 65530
    protocol         = "all"
    cidr_blocks      = ["78.63.87.6/32"]
  }
  }



resource "aws_instance" "naujas" {
 ami = "ami-08ca3fed11864d6bb"
 instance_type = "t2.micro"
   tags = {  Name = " naujas" }
 }

 resource "aws_db_instance" "naujas" {
 allocated_storage = 10
 identifier = "naujas"
 storage_type = "gp2"
 engine = "mysql"
 engine_version = "5.7"
 instance_class = "db.t2.large"
 db_name = "naujas"
 username = "root"
 password = "user"
 parameter_group_name = "default.mysql5.7"
 }





resource "aws_network_interface_sg_attachment" "sg_attachment" {
  security_group_id    = "sg-02fb2e17c787e9039"
  network_interface_id = "${aws_instance.mano.primary_network_interface_id}"
}