resource "aws_instance" "ec2_instance" {
  # for_each = toset(var.instances)
  for_each = var.instances
  ami           = var.ami_id
  # instance_type = "t2.micro"
  instance_type = each.value
  vpc_security_group_ids = [ aws_security_group.allow_all.id ]
  tags = {
    Name = each.key
  }
}

resource "aws_security_group" "allow_all" {
    name = var.sg_name
    description = var.sg_description

    ingress {
        from_port = var.from_port
        to_port = var.to_port
        protocol = "-1"
        cidr_blocks = var.cidr_blocks
        ipv6_cidr_blocks = var.ipv6_cidr_blocks
    }

    egress {
        from_port = var.from_port
        to_port = var.to_port
        protocol = "-1"
        cidr_blocks = var.cidr_blocks
        ipv6_cidr_blocks = var.ipv6_cidr_blocks
    }

    tags = var.sg_tags
}