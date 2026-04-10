provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = "t2.micro"
  key_name      = "keypairvirginia"

  tags = {
    Name = "CI-CD-Server"
  }
}

output "public_ip" {
  value = aws_instance.web.public_ip
}
