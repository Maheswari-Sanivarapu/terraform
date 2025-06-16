module "ec2" {
    source = "../terraform-aws-instance-module"
    sgids = var.security_group_id
    #instance_type = var.instance_type
    tags = var.tags
}