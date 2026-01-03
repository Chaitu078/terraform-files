resource "aws_instance" "myserver" {
tags = {
Name = "TF-Server"
}

ami = "ami-0953476d60561c955"
instance_type = "t3.micro"
key_name = "docker-sg"
availability_zone = "us-east-1a"

root_block_device {
volume_size = 10
}

count = 1
}
