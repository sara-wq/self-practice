variable "aws_region"{
  default="us-east-1"
  }
variable "security_grp"{
  default="jenkins-sg-2024-2025"
  }
variable "ami_id"{
  default="ami-0ebfd941bbafe70c6"
  }
variable "key_name"{
  default="mykey"
  }
variable "instance_type"{
  default="t2.micro"
  }
variable "tag_name"{
  default="my-ec2-ins"
  }
variable "versioning"{
  type=bool
  default=true
  }
variable "bucket_prefix"{
  type=string
  default="my-s3bucket-"
  }
variable "acl"{
  type=string
  default="private"
  }
variable "tags"{
  type=map
  default{
    environment="DEV"
    terraform="true"
  }
}
