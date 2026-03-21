provider "aws" {
  region = "us-east-1"
}

# Security Group
resource "aws_security_group" "allow_access" {
  name = "allow_access"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_access"
  }
}

# EC2 Instance
resource "aws_instance" "example" {
  ami                    = "ami-0ec10929233384c7f"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_access.id]
  associate_public_ip_address = true

  tags = {
    Name = "example-instance"
  }
}

# Output
output "public_ip" {
  value = aws_instance.example.public_ip
}