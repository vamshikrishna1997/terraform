provider "aws" {
  region     = "ap-south-1"
}
resource "aws_instance" "Demo" {
  ami           = "ami-0597375488017747e"
  instance_type = "t2.micro"
  key_name = "aws"
  tags = {
    Name = "benz"
  }
}
