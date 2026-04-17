provider "aws" {
  region = "us-east-1"
}

# Security Group
resource "aws_security_group" "ssh_sg" {
  name        = "ssh-sg"
  description = "Allow SSH and HTTP access"

  # ✅ SSH
  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # ✅ HTTP (ADD THIS)
  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
# Jenkins
ingress {
  from_port   = 8080
  to_port     = 8080
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}

# SonarQube
ingress {
  from_port   = 9000
  to_port     = 9000
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}
  # ✅ Outbound
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# EC2 Instance
resource "aws_instance" "web" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = "t2.micro"
  key_name      = "keypairvirginia"

  vpc_security_group_ids = [aws_security_group.ssh_sg.id]

  tags = {
    Name = "JenkinsCI/CD"
  }
}

output "public_ip" {
  value = aws_instance.web.public_ip
}
