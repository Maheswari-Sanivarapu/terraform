resource "aws_route53_record" "www" {
  count = 4
  zone_id = var.zone-id
  name    = "${var.instances[count.index]}.${var.domain-name}"
  type    = "A"
  ttl     = 1
  records = [aws_instance.ec2_instance[count.index].private_ip]
}