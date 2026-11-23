# This zone was created automatically by Route 53 Registrar. The awscost A record
# intentionally remains unmanaged here because it may belong to another project.
resource "aws_route53_zone" "parkerparkerparker_com" {
  name          = "parkerparkerparker.com"
  comment       = "HostedZone created by Route53 Registrar"
  force_destroy = false

  lifecycle {
    prevent_destroy = true
  }
}

import {
  to = aws_route53_zone.parkerparkerparker_com
  id = "Z09015622A8X4Y0IWN8GK"
}

# The apex domain serves the Vercel production deployment directly.
resource "aws_route53_record" "apex" {
  zone_id = aws_route53_zone.parkerparkerparker_com.zone_id
  name    = aws_route53_zone.parkerparkerparker_com.name
  type    = "A"
  ttl     = 300
  records = ["216.198.79.1"]
}
