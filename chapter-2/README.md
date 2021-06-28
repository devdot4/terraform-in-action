# Chapter - 1
**Section 1.1** |
-|
`chapter-1/1.1/main.tf` |

Create a file called `main.tf` and add this snippet inside:
```
resource "aws_instance" "helloworld" {
  ami           = "ami-09dd2e08d601bff67"
  instance_type = "t2.micro"
  tags = {
    Name = "HelloWorld"
  }
}
```
This will work but it will ask you to input where you want to create EC2 (region).
##
**Section 1.2** |
-|
`chapter-1/1.2/main.tf` |

We will add region module to hard-code our answer.
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
##
**Section 1.3** |
-|
`chapter-1/1.3/main.tf` |

Adding more resources and arguments shown below:
```
provider "aws" {
  region = "us-west-2"
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  owners = ["099720109477"]
}

resource "aws_instance" "helloworld" {
  ami           = data.aws_ami.ubuntu.id 
  instance_type = "t2.micro"
  tags = {
    Name = "HelloWorld"
  }
}
```
This will query the most recent Ubuntu AMI.
##