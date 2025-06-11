resource "aws_instance" "ec2_instance" {
  ami                    = data.aws_ami.mahi.id
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_all.id]
  tags = {
    Name = "HelloWorld"
  }
}


resource "aws_security_group" "allow_all" {
  name        = "allow-all"
  description = "allow all traffic"

  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "Allow-all"
  }
}