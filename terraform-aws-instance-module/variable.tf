variable "ami_id" {
    default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
    default = "t2.micro"
    type = string
    
    validation {
        condition = contains(["t2.micro","t3.micro","t2.small"], var.instance_type) #var.instance_type should be only of this values mentioned in the list
        error_message = "Valid values for instance_type are t2.micro, t3.micro, t2.small" # otherwise it will throw an error
    }
}


variable "sgids" {
    type = list 
}

variable "tags" {
    type = map
}