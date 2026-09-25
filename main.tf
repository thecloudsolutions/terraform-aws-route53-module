module "route53" {
  source = "git::https://github.com/thecloudsolutions/terraform-aws-route53-component.git?ref=main"

  route53_map = var.route53_map
}
