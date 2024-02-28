provider "aws" {
  region = "us-west-1"  
}

resource "aws_instance" "ec2-instance" {
  ami           = "ami-0ce2cb35386fc22e9"  
  instance_type = "t2.micro"                
  key_name      = "jenkins-key"      

  tags = {
    Name = "demo-test-instance"  
  }
}