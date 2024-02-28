provider "aws" {
  region = "us-east-1"  
}

resource "aws_instance" "ec2-instance" {
  ami           = "ami-0c7217cdde317cfec"  
  instance_type = "t2.micro"                
  key_name      = "jenkins-key"      

  tags = {
    Name = "demo-test-instance"  
  }
}
