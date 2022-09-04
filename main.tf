 provider "aws" {
   access_key = "AKIAVQK6SE7CDQYM72MC"
   secret_key = "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"
   region = "eu-west-1"
 } 
data "aws_vpc" "mano" {
  id = "vpc-01d49ba9371a34927" # Incogni VPC id
        
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
resource "aws_security_group" "Incogni" {
  name        = "Incogni"
  description = "Allow Incogni inbound traffic"
  # vpc_id      = aws_vpc.mano.id
tags = {
    Name = "Incogni"
  }
  ingress {
    description      = " internal VPN IP"
    from_port        = 1
    to_port          = 65530
    protocol         = "all"
    cidr_blocks      = ["92.249.36.184/32"]
  }
  ingress {
    description      = " internal VPN IP"
    from_port        = 1
    to_port          = 65530
    protocol         = "all"
    cidr_blocks      = ["92.249.36.185/32"]
  }
  ingress {
    description      = " internal VPN IP"
    from_port        = 1
    to_port          = 65530
    protocol         = "all"
    cidr_blocks      = ["89.34.99.57/32"]
  }
  ingress {
    description      = " internal VPN IP"
    from_port        = 1
    to_port          = 65530
    protocol         = "all"
    cidr_blocks      = ["195.181.165.175/32"]
  }
  ingress {
    description      = " internal VPN IP"
    from_port        = 1
    to_port          = 65530
    protocol         = "all"
    cidr_blocks      = ["92.249.36.4/32"]
  }
  ingress {
    description      = " Sharko HQ IP"
    from_port        = 1
    to_port          = 65530
    protocol         = "all"
    cidr_blocks      = ["217.117.19.186/32"]
  }
  ingress {
    description      = " Unconfirmed from Digital Ocean"
    from_port        = 1
    to_port          = 65530
    protocol         = "all"
    cidr_blocks      = ["146.70.82.106/32"]
  }
  ingress {
    description      = " Unconfirmed from Digital Ocean"
    from_port        = 1
    to_port          = 65530
    protocol         = "all"
    cidr_blocks      = ["3.208.120.145/32"]
  }
  ingress {
    description      = " Unconfirmed from Digital Ocean"
    from_port        = 1
    to_port          = 65530
    protocol         = "all"
    cidr_blocks      = ["34.194.127.46/32"]
  }
  ingress {
    description      = " Unconfirmed from Digital Ocean"
    from_port        = 1
    to_port          = 65530
    protocol         = "all"
    cidr_blocks      = ["34.220.159.42/32"]
  }
  ingress {
    description      = " Unconfirmed from Digital Ocean"
    from_port        = 1
    to_port          = 65530
    protocol         = "all"
    cidr_blocks      = ["5.253.205.197/32"]
  }
  ingress {
    description      = " Unconfirmed from Digital Ocean"
    from_port        = 1
    to_port          = 65530
    protocol         = "all"
    cidr_blocks      = ["51.15.211.169/32"]
  }
  ingress {
    description      = " Unconfirmed from Digital Ocean"
    from_port        = 1
    to_port          = 65530
    protocol         = "all"
    cidr_blocks      = ["54.234.237.108/32"]
  }
  ingress {
    description      = " Povilo/Tado"
    from_port        = 1
    to_port          = 65530
    protocol         = "all"
    cidr_blocks      = ["78.56.226.158/32"]
  }
  ingress {
    description      = " Povilo/Tado"
    from_port        = 1
    to_port          = 65530
    protocol         = "all"
    cidr_blocks      = ["87.239.87.205/32"]
  }
  ingress {
    description      = " Giedriaus"
    from_port        = 1
    to_port          = 65530
    protocol         = "all"
    cidr_blocks      = ["78.63.87.6/32"]
  }
}
