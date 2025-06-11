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
        Name = "allow-all"
    }
}

variable "sg_name" {
    type = string
    default = "vars-file-allow-all" # if we comment this it will take value from command prompt
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