vim provider.tf

provider "aws" {
region = "ap-south-1"
}


vim main.tf

resource "aws_instance" "myaws" {
tags = {
Name = "docker-server"
}

ami = var.ami_id
instance_type = var.itype
key_name = var.ikey
availability_zone = var.myzone

root_block_device {
volume_size = var.ebs
}

count = var.icount
}



vi variable.tf

variable "ami_id" {
description = "this is my ami_id"
type = string
default = "ami-0af9569868786b23a"
}
variable "itype" {
type = string
default = "t2.micro"
}
variable "ikey" {
type = string
default = "ansible-sg"
}
variable "myzone" {
type = string
default = "ap-south-1a"
}
variable "ebs" {
type = number
default = 10
}
variable "icount" {
type = number
default = 1
}




