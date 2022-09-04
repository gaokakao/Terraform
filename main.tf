 provider "aws" {
   access_key = "AKIAVQK6SE7CDQYM72MC"
   secret_key = "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"
   region = "eu-west-1"
 } 
data "aws_vpc" "mano" {
  id = "vpc-0d6270325c0cad477" # VPC id
        
}
# Create EC2 Instance Example
# ami-08ca3fed11864d6bb
# resource "aws_instance" "mano" {
# ami = "ami-08ca3fed11864d6bb"
# instance_type = "t2.micro"
#   tags = {
#     Name = " Test Instance"
#   }
# }
#
#   Create RDS database instance Example
#
# resource "aws_db_instance" "Incogni" {
# allocated_storage = 10
# identifier = "incogni"
# storage_type = "gp2"
# engine = "mysql"
# engine_version = "5.7"
# instance_class = "db.t2.large"
# db_name = "incogni"
# username = "root"
# password = "down1234"
# parameter_group_name = "default.mysql5.7"
# }
#
#     AWS Firewall Security group
#
resource "aws_security_group" "Mano" {
  name        = "Mano"
  description = "Allow inbound traffic"
  # vpc_id      = aws_vpc.mano.id
tags = {
    Name = "Mano"
  }
  ingress {
    description      = "HP"
    from_port        = 1
    to_port          = 65530
    protocol         = "all"
    cidr_blocks      = ["78.63.87.6/32"]
  }

  ingress {
    description      = "GitLab"
    from_port        = 1
    to_port          = 65530
    protocol         = "all"
    cidr_blocks      = ["52.49.187.66/32"]
  }

  ingress {
    description      = "GitLab Runner 1"
    from_port        = 1
    to_port          = 65530
    protocol         = "all"
    cidr_blocks      = ["54.220.220.9/32"]
  }

  ingress {
    description      = "GitLab Runner 2"
    from_port        = 1
    to_port          = 65530
    protocol         = "all"
    cidr_blocks      = ["52.50.238.142/32"]
  }
  
}
