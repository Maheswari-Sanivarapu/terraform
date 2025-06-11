# data "aws_ami" "mahi" {
#   owners      = ["557690617909"]
#   most_recent = true
#   filter {
#     name   = "name"
#     values = ["RHEL-9-DevOps-Practice"]
#   }
# }

# output "ami-id" {
#   value = data.aws_ami.mahi.id
# }

#data "aws_ami" "mahi" 
data "aws_ami" "joindevops" {
  owners      = ["557690617909"]
  most_recent = true

  filter {
    name   = "name"
    values = ["RHEL-9-DevOps-Practice"] 
  }
   filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

output "ami-id" {
  value = data.aws_ami.joindevops.id
}

