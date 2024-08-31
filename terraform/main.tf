provider "aws" {
  region = "us-east-1"
}


resource "aws_instance" "web" {
  ami           = "ami-04a81a99f5ec58529"
  instance_type = "t2.micro"
  key_name = "ganesh"
  security_groups = [ "default" ]
  user_data = file("${path.module}/userdata.sh")

  tags = {
    Name = "Dev"
  }
}
