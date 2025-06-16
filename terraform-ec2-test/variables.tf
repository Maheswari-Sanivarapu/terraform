variable "security_group_id" {
    default = ["sg-03d470aa1528c1a48"]
}

variable "tags" {
    default = {
        Name = "ec2-instance"
        Component = "cart"
        terraform = "true"
    }
}

variable "instance_type" {
    default = "t2.medium"
}