 provider "aws" {

   access_key = "AKIATMKUVKWYISIFEKW5"
   secret_key = "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"
   region = "eu-west-1"
 } 


# ami-08ca3fed11864d6bb

resource "aws_instance" "mano" {
ami = "ami-08ca3fed11864d6bb"
instance_type = "t2.micro"
  
}