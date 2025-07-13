

data "aws_ami" "mahi" {
  owners      = ["973714476881"]
  most_recent = true
  filter {
    name   = "name"
    values = ["RHEL-9-DevOps-Practice"]
  }
}

output "ami-id" {
  value = data.aws_ami.mahi.id
}

# data "aws_ami" "joindevops" {
#   owners      = ["973714476881"]
#   most_recent = true # latest version lo crate chestudi ee command
#   filter {
#     name   = "name"
#     values = ["RHEL-9-DevOps-Practice"]
#   }
#   filter {
#     name   = "root-device-type"
#     values = ["ebs"]
#   }
#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }
# }
# output "ami_id" {
#   value = data.aws_ami.joindevops.id
# }



