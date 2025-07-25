resource "aws_instance" "ec2_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [ aws_security_group.allow_all.id ]
  tags = var.ec2_tags

  provisioner "local-exec" {
    #command = "echo ${self.private_ip} > inventory"
    command = "${self.private_ip} > inventory"
    on_failure = continue # it will ignore errors
  }

  provisioner "local-exec" {
    command = "echo 'instance is destroyed'"
    when = destroy
  }
  
  connection {
    type  = "ssh"
    user = "ec2-user"
    password = "DevOps321"
    host = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo dnf install nginx -y",
      "sudo systemctl start nginx",
    ]
  }

  provisioner "remote-exec" {
    when = destroy
    inline = [
      "sudo systemctl stop nginx"
    ]
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