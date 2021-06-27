# Amazon Web Services
provider "aws" {
  # Oregon = us-west-2
  region = "us-west-2"
}
# AWS Elastic Compute Cloud Instance
resource "aws_instance" "hello-world" {
  # ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-20200423
  ami           = "ami-09dd2e08d601bff67"
  # aws free tier instance (burstable)
  instance_type = "t2.micro"
  tags = {
    Name = "HelloWorld"
  }
}