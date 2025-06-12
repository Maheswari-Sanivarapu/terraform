resource "aws_route53_record" "www" {
  for_each = aws_instance.ec2_instance
  zone_id = var.zone-id
  name    = "${each.key}.${var.domain-name}"
  type    = "A"
  ttl     = 1
  records = [each.value.private_ip]
  allow_overwrite = true
}