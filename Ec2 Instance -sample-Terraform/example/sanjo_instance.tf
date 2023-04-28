provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "sanjovarghese" {
  ami                    = "ami-0578f2b35d0328762"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-2a"
  key_name               = "sanjokey"
  vpc_security_group_ids = ["sg-01b6f28ebdc38d94a"]
  tags = {
    Name    = "sanjo-Instance"
    Project = "Terrasanjo"
  }
}
