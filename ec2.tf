#key pair

resource "aws_key_pair" "my-key" {
  key_name   = "terra-key"
  public_key = file("terra-key.pub")
}
# VPC and security
resource "aws_default_vpc" "default" {
}
resource "aws_security_group" "my-security" {
    name        = "terra-sg"
    description = "Allow TLS inbound traffic and all outbound traffic using terraform"
    vpc_id      = aws_default_vpc.default.id # interpollation


  # inbound rules
  
ingress {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
      description = "ssh open"
  }

  ingress {
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
      description = "http open"
  }

  ingress {
      from_port   = 8000
      to_port     = 8000
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
      description = "ssh open"
  }

  # outbound rules
  egress {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
      description = "all access"
  }


  tags = {
     Name = "terra-sg"
  }
}

#ec2 instance

resource "aws_instance" "my-instance" {
    key_name = aws_key_pair.my-key.key_name
    security_groups = [aws_security_group.my-security.name]
    instance_type           = "t2.micro"
    ami                     = "ami-03fd334507439f4d1"

  root_block_device {
      volume_size = 10
      volume_type = "gp3"
  }
  tags = {
    Name = "apna-server"
  }
 
}
