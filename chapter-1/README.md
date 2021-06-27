# Chapter-1

`chapter-1/listing-1.1/main.tf`
```
provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "hello-world" {
  ami           = "ami-09dd2e08d601bff67"
  instance_type = "t2.micro"
  tags = {
    Name = "Hello-World"
  }
}
```
`t plan`  
`t apply` + `yes` when prompted.