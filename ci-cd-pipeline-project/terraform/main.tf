provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "web" {
  ami           = "ami-0f5ee92e2d63afc18"
  instance_type = "t2.micro"
  key_name      = "keypairvirginia.pem"

  tags = {
    Name = "CI-CD-Server"
  }
}

output "public_ip" {
  value = aws_instance.web.public_ip
}
