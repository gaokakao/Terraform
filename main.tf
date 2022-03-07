 provider "aws" {

   access_key = "AKIATMKUVKWYISIFEKW5"
   secret_key = "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"
   region = "eu-west-1"
 } 


# ami-08ca3fed11864d6bb

resource "aws_instance" "mano" {
ami = "ami-08ca3fed11864d6bb"
instance_type = "t2.micro"

  tags = {
    Name = "Bandomasis Instance"
  }  


}


resource "aws_db_instance" "Incogni" {
allocated_storage = 10
identifier = "incogni"
storage_type = "gp2"
engine = "mysql"
engine_version = "5.7"
instance_class = "db.t2.large"
db_name = "incogni"
username = "root"
password = "down1234"
parameter_group_name = "default.mysql5.7"
}