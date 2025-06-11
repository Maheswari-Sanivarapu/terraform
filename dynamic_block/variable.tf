variable "ami_id" {
  type    = string
  default = "ami-09c813fb71547fc4f"
  description = "The Id of RHEL-Devops-Practice"
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "ec2_tags" {
    type = map(string)
    default = {
        Name = "helloworld"
    }
}

variable "sg_name" {
    type = string
    default = "allow-all"
}

variable "sg_description" {
    type = string
    default = "allow all traffic"
}

variable "from_port" {
    default = 0
}

variable "to_port" {
    default = 0
}

variable "cidr_blocks" {
    type = list(string)
    default = ["0.0.0.0/0"]
}

variable "ipv6_cidr_blocks" {
    type = list(string)
    default = ["::/0"]
}

variable "sg_tags" {
    type = map(string)
    default = {
        Name = "Allow-all"
    }
}

variable "ingress_ports" {
    default = [
        {
            from_port = 22
            to_port = 22
        },
        {
            from_port = 80
            to_port = 80
        },
        {
            from_port = 8080
            to_port = 8080
        }
    ]
}