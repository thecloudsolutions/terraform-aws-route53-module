output "route53_zone_arns" {
  value       = module.route53.route53_zone_arns
  description = "The Amazon Resource Name (ARN) of the Hosted Zone."
}

output "route53_zone_ids" {
  value       = module.route53.route53_zone_ids
  description = "The Hosted Zone ID. This can be referenced by zone records."
}

output "route53_zone_name_servers" {
  value       = module.route53.route53_zone_name_servers
  description = "A list of name servers in associated (or default) delegation set."
}

output "route53_zone_tags_all" {
  value       = module.route53.route53_zone_tags_all
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
}

output "route53_record_names" {
  value       = module.route53.route53_record_names
  description = "The name of the record."
}

output "route53_record_fqdns" {
  value       = module.route53.route53_record_fqdns
  description = "FQDN built using the zone domain and name."
}
