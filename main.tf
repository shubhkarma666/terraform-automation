#Security Group
resource "aws_security_group" "ssh_sg" {
  name = "allow_ssh"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

#EC2 instance
resource "aws_instance" "ec2" {
  ami           = "ami-0ff5003538b60d5ec"
  instance_type = "t3.micro"
  key_name      = var.key_name
  vpc_security_group_ids = [aws_security_group.ssh_sg.id]

  root_block_device {
    volume_type = "gp2"
    volume_size = 8
  }

  tags = {
    Name = "terraform-ec2-simple"
  }
}
