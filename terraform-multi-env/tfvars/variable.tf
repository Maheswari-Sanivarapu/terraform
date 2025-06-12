variable "project"{
    default = "roboshop"
}

variable "ami_id" {
    default = "ami-09c813fb71547fc4f"
}

variable "environment"{

}

variable "common_tags" {
    default = {
        project = "roboshop"
        terraform = true
    }
}

variable "instances" {
    default = ["monogdb","redis"]
}

variable "sg_name" {
    default = "allow-all"
}

variable "sg_description" {
    default = "Allow-all"
}

variable "from_port" {
    default = 0 
}

variable "to_port" {
    default = 0 
}

variable "cidr_blocks" {
    default = ["0.0.0.0/0"]
}

variable "ipv6_cidr_blocks" {
    default = ["::/0"]
}