resource "aws_instance" "ec2_instance" {
  count = length(var.instances)
  ami           = var.ami_id
  instance_type = lookup(var.instance_type, terraform.workspace)
  vpc_security_group_ids = [ aws_security_group.allow_all.id ]
  tags = merge(
    var.common_tags,
    {
    Name = "${var.project}-${var.instances[count.index]}-${terraform.workspace}"
    Component = var.instances[count.index]
    environment = terraform.workspace
    }
  )
}

resource "aws_security_group" "allow_all" {
    name = "${var.sg_name}-${terraform.workspace}"
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

    tags = merge(
      var.common_tags,
      {
        Name = "${var.project}-${var.sg_name}-${terraform.workspace}"
      }
    )
}