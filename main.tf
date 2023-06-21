provider "aws" {
    region = "us-east-1"
    access_key = "AKIAW7UULS6PJ7BDQS4C"
    secret_key = "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"
  
}

resource "aws_instance" "one" {
    ami = "ami-090e0fc566929d98b"
    instance_type = "t3.micro"
    key_name = "VIGINIA"
    availability_zone = "us-east-1a"
    vpc_security_group_ids = [ aws_security_group.securityone.id ]
    tags = {
      Name = "Terraform"
    }
  
}
