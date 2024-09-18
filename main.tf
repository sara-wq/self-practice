provider "aws" {
  region = var.aws_region
}

resource "aws_security_group" "my_security_grp" {
  name= var.security_grp

 ingress {
  from_port = 8080
  to_port = 8080
  protocol = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  }

ingress {
  from_port = 22
  to_port = 22
  protocol = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  }

 egress {
  from_port = 0
  to_port = 65535
  protocol = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  }

tags={
  name=var.security_grp
  }
}

resource"aws_instance" "my_first_instance"{
  ami = var.ami_id
  key_name = var.key_name
  instance_type = var.instance_type
  security_groups= [var.security_grp]
  tags={
    Name=var.tag_name
    }
  }

  




