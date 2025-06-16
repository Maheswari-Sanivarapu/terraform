resource "aws_instance" "this" {
  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = var.sgids
  tags = var.tags
}