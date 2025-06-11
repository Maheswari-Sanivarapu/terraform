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

variable "environment" {
    default = "dev"
}

variable "instances" {
    # deafult = ["mongodb","redis","mysql","rabbitMQ"]
    default = {
        mongodb = "t2.micro" # Here each keyword is assigned for every iteration you will get each.key is equal to each.value
        redis = "t2.micro"
        mysql = "t2.micro"
        rabbitMQ = "t2.micro"
    }
}

variable "zone-id"{
    default = "Z07100922S6MUFRUIEXB8"
}

variable "domain-name" {
    default = "pavithra.fun"
}