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

output "route53_zone_primary_name_servers" {
  value       = module.route53.route53_zone_primary_name_servers
  description = "Name server that created each hosted zone SOA record."
}

output "route53_health_check_ids" {
  value       = module.route53.route53_health_check_ids
  description = "Health check IDs by Route 53 group and logical name."
}

output "route53_health_check_arns" {
  value       = module.route53.route53_health_check_arns
  description = "Health check ARNs by Route 53 group and logical name."
}

output "route53_dnssec_ds_records" {
  value       = module.route53.route53_dnssec_ds_records
  description = "Delegation signer records by Route 53 group."
}

output "route53_delegation_record_fqdns" {
  value       = module.delegation_records.route53_record_fqdns
  description = "Delegation record FQDNs by parent zone and delegation record key."
}

output "kms_key_arns" {
  value       = module.kms.kms_key_arns
  description = "The Amazon Resource Name (ARN) of each KMS key."
}

output "kms_key_ids" {
  value       = module.kms.kms_key_ids
  description = "The globally unique identifier for each KMS key."
}

output "kms_key_tags_all" {
  value       = module.kms.kms_key_tags_all
  description = "Tags assigned to each KMS key."
}

output "kms_alias_arns" {
  value       = module.kms.kms_alias_arns
  description = "The Amazon Resource Name (ARN) of each KMS alias."
}

output "kms_alias_target_key_arns" {
  value       = module.kms.kms_alias_target_key_arns
  description = "The target key ARN of each KMS alias."
}

output "kms_key_regions" {
  value       = module.kms.kms_key_regions
  description = "Regions where the keys are managed."
}

output "kms_key_policies" {
  value       = module.kms.kms_key_policies
  description = "Map of key policy JSON documents."
}

output "kms_key_specs" {
  value       = module.kms.kms_key_specs
  description = "Types of key material."
}

output "kms_key_usages" {
  value       = module.kms.kms_key_usages
  description = "Permitted cryptographic uses of the keys."
}

output "kms_key_states" {
  value       = module.kms.kms_key_states
  description = "States of imported and existing keys."
}

output "kms_key_expiration_models" {
  value       = module.kms.kms_key_expiration_models
  description = "Whether imported key material expires."
}

output "kms_key_valid_to" {
  value       = module.kms.kms_key_valid_to
  description = "Expiration times of imported key material."
}

output "kms_alias_names" {
  value       = module.kms.kms_alias_names
  description = "Names of the key aliases."
}

output "kms_alias_name_prefixes" {
  value       = module.kms.kms_alias_name_prefixes
  description = "Prefixes used to generate the alias names."
}

output "kms_alias_target_key_ids" {
  value       = module.kms.kms_alias_target_key_ids
  description = "Identifiers of the keys associated with the aliases."
}

output "kms_alias_regions" {
  value       = module.kms.kms_alias_regions
  description = "Regions where the aliases are managed."
}

output "kms_grant_ids" {
  value       = module.kms.kms_grant_ids
  description = "Maps of grant identifiers."
}

output "kms_grant_tokens" {
  value       = module.kms.kms_grant_tokens
  description = "Maps of grant tokens."
  sensitive   = true
}

output "kms_grant_regions" {
  value       = module.kms.kms_grant_regions
  description = "Maps of grant regions."
}

output "kms_grant_key_ids" {
  value       = module.kms.kms_grant_key_ids
  description = "Maps of key IDs or ARNs to which the grants apply."
}

output "kms_grant_names" {
  value       = module.kms.kms_grant_names
  description = "Maps of grant names."
}

output "kms_grant_grantee_principals" {
  value       = module.kms.kms_grant_grantee_principals
  description = "Maps of grantee principals."
}

output "kms_grant_operations" {
  value       = module.kms.kms_grant_operations
  description = "Maps of operations permitted by the grants."
}

output "kms_grant_retiring_principals" {
  value       = module.kms.kms_grant_retiring_principals
  description = "Maps of retiring principals."
}

output "kms_grant_constraints" {
  value       = module.kms.kms_grant_constraints
  description = "Maps of encryption context constraints for the grants."
}

output "kms_replica_key_arns" {
  value       = module.kms.kms_replica_key_arns
  description = "The Amazon Resource Name (ARN) of the key."
}

output "kms_replica_key_ids" {
  value       = module.kms.kms_replica_key_ids
  description = "The globally unique identifier for the key."
}

output "kms_replica_key_regions" {
  value       = module.kms.kms_replica_key_regions
  description = "Region where the resource is managed."
}

output "kms_replica_key_policies" {
  value       = module.kms.kms_replica_key_policies
  description = "The key policy JSON document."
}

output "kms_replica_key_rotation_enabled" {
  value       = module.kms.kms_replica_key_rotation_enabled
  description = "Whether rotation is enabled for the related multi-Region keys."
}

output "kms_replica_key_specs" {
  value       = module.kms.kms_replica_key_specs
  description = "Type of key material."
}

output "kms_replica_key_usages" {
  value       = module.kms.kms_replica_key_usages
  description = "Permitted cryptographic use of the key."
}

output "kms_replica_key_enabled" {
  value       = module.kms.kms_replica_key_enabled
  description = "Whether the key is enabled."
}

output "kms_replica_key_tags_all" {
  value       = module.kms.kms_replica_key_tags_all
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
}

output "kms_replica_external_key_arns" {
  value       = module.kms.kms_replica_external_key_arns
  description = "The Amazon Resource Name (ARN) of the key."
}

output "kms_replica_external_key_ids" {
  value       = module.kms.kms_replica_external_key_ids
  description = "The globally unique identifier for the key."
}

output "kms_replica_external_key_regions" {
  value       = module.kms.kms_replica_external_key_regions
  description = "Region where the resource is managed."
}

output "kms_replica_external_key_policies" {
  value       = module.kms.kms_replica_external_key_policies
  description = "The key policy JSON document."
}

output "kms_replica_external_key_usages" {
  value       = module.kms.kms_replica_external_key_usages
  description = "Permitted cryptographic use of the key."
}

output "kms_replica_external_key_states" {
  value       = module.kms.kms_replica_external_key_states
  description = "The current state of the key."
}

output "kms_replica_external_key_expiration_models" {
  value       = module.kms.kms_replica_external_key_expiration_models
  description = "Whether the imported key material expires."
}

output "kms_replica_external_key_valid_to" {
  value       = module.kms.kms_replica_external_key_valid_to
  description = "Expiration time of the imported key material."
}

output "kms_replica_external_key_enabled" {
  value       = module.kms.kms_replica_external_key_enabled
  description = "Whether the key is enabled."
}

output "kms_replica_external_key_tags_all" {
  value       = module.kms.kms_replica_external_key_tags_all
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
}

output "kms_custom_key_store_ids" {
  value       = module.kms.kms_custom_key_store_ids
  description = "Maps of custom key store identifiers."
}

output "kms_existing_key_ids" {
  value       = module.kms.kms_existing_key_ids
  description = "The unique identifier of the resource."
}

output "kms_existing_key_arns" {
  value       = module.kms.kms_existing_key_arns
  description = "The Amazon Resource Name (ARN) of the key."
}

output "kms_existing_key_regions" {
  value       = module.kms.kms_existing_key_regions
  description = "Region where the resource is managed."
}

output "kms_existing_key_aws_account_ids" {
  value       = module.kms.kms_existing_key_aws_account_ids
  description = "AWS account that owns the key."
}

output "kms_existing_key_cloud_hsm_cluster_ids" {
  value       = module.kms.kms_existing_key_cloud_hsm_cluster_ids
  description = "CloudHSM cluster containing the key material."
}

output "kms_existing_key_creation_dates" {
  value       = module.kms.kms_existing_key_creation_dates
  description = "Creation date of the key."
}

output "kms_existing_key_custom_key_store_ids" {
  value       = module.kms.kms_existing_key_custom_key_store_ids
  description = "ID of the custom key store containing the key."
}

output "kms_existing_key_customer_master_key_specs" {
  value       = module.kms.kms_existing_key_customer_master_key_specs
  description = "Type of key material."
}

output "kms_existing_key_deletion_dates" {
  value       = module.kms.kms_existing_key_deletion_dates
  description = "Scheduled deletion date of the key."
}

output "kms_existing_key_descriptions" {
  value       = module.kms.kms_existing_key_descriptions
  description = "Description of the key."
}

output "kms_existing_key_enabled" {
  value       = module.kms.kms_existing_key_enabled
  description = "Whether the key is enabled."
}

output "kms_existing_key_expiration_models" {
  value       = module.kms.kms_existing_key_expiration_models
  description = "Whether the imported key material expires."
}

output "kms_existing_key_managers" {
  value       = module.kms.kms_existing_key_managers
  description = "Manager of the key."
}

output "kms_existing_key_specs" {
  value       = module.kms.kms_existing_key_specs
  description = "Type of key material."
}

output "kms_existing_key_states" {
  value       = module.kms.kms_existing_key_states
  description = "The current state of the key."
}

output "kms_existing_key_usages" {
  value       = module.kms.kms_existing_key_usages
  description = "Permitted cryptographic use of the key."
}

output "kms_existing_key_multi_region" {
  value       = module.kms.kms_existing_key_multi_region
  description = "Whether the key is a multi-Region key."
}

output "kms_existing_key_multi_region_configurations" {
  value       = module.kms.kms_existing_key_multi_region_configurations
  description = "Primary and replica configuration of the multi-Region key."
}

output "kms_existing_key_origins" {
  value       = module.kms.kms_existing_key_origins
  description = "Origin of the key material."
}

output "kms_existing_key_pending_deletion_window_in_days" {
  value       = module.kms.kms_existing_key_pending_deletion_window_in_days
  description = "Waiting period before deleting a multi-Region primary key."
}

output "kms_existing_key_valid_to" {
  value       = module.kms.kms_existing_key_valid_to
  description = "Expiration time of the imported key material."
}

output "kms_existing_key_xks_key_configurations" {
  value       = module.kms.kms_existing_key_xks_key_configurations
  description = "Configuration of the external key store key."
}

output "kms_public_keys" {
  value       = module.kms.kms_public_keys
  description = "Base64-encoded DER public keys."
}

output "kms_public_key_pems" {
  value       = module.kms.kms_public_key_pems
  description = "PEM-encoded public keys."
}

output "kms_public_key_arns" {
  value       = module.kms.kms_public_key_arns
  description = "ARNs of keys whose public keys were retrieved."
}

output "kms_public_key_encryption_algorithms" {
  value       = module.kms.kms_public_key_encryption_algorithms
  description = "Encryption algorithms supported by the keys."
}

output "kms_public_key_signing_algorithms" {
  value       = module.kms.kms_public_key_signing_algorithms
  description = "Signing algorithms supported by the keys."
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

output "iam_policy_document_jsons" {
  value       = module.iam.iam_policy_document_jsons
  description = "Standard JSON policy document rendered based on the arguments above."
}

output "route53_zone_names" {
  value       = module.route53.route53_zone_names
  description = "The hosted zone name."
}

output "route53_health_check_tags_all" {
  value       = module.route53.route53_health_check_tags_all
  description = "All tags assigned to each health check."
}

output "route53_delegation_set_ids" {
  value       = module.route53.route53_delegation_set_ids
  description = "The delegation set ID."
}

output "route53_delegation_set_arns" {
  value       = module.route53.route53_delegation_set_arns
  description = "The delegation set ARN."
}

output "route53_delegation_set_name_servers" {
  value       = module.route53.route53_delegation_set_name_servers
  description = "Name servers assigned to the delegation set."
}

output "route53_vpc_association_authorization_ids" {
  value       = module.route53.route53_vpc_association_authorization_ids
  description = "The VPC association authorization ID."
}

output "route53_vpc_association_authorization_zone_ids" {
  value       = module.route53.route53_vpc_association_authorization_zone_ids
  description = "The authorized hosted zone ID."
}

output "route53_vpc_association_authorization_vpc_ids" {
  value       = module.route53.route53_vpc_association_authorization_vpc_ids
  description = "The authorized VPC ID."
}

output "route53_vpc_association_authorization_vpc_regions" {
  value       = module.route53.route53_vpc_association_authorization_vpc_regions
  description = "The region of the authorized VPC."
}

output "route53_zone_association_ids" {
  value       = module.route53.route53_zone_association_ids
  description = "The zone association ID."
}

output "route53_zone_association_zone_ids" {
  value       = module.route53.route53_zone_association_zone_ids
  description = "The associated hosted zone ID."
}

output "route53_zone_association_vpc_ids" {
  value       = module.route53.route53_zone_association_vpc_ids
  description = "The associated VPC ID."
}

output "route53_zone_association_vpc_regions" {
  value       = module.route53.route53_zone_association_vpc_regions
  description = "The region of the associated VPC."
}

output "route53_zone_association_owning_accounts" {
  value       = module.route53.route53_zone_association_owning_accounts
  description = "The account that owns the hosted zone."
}

output "route53_cidr_collection_ids" {
  value       = module.route53.route53_cidr_collection_ids
  description = "The CIDR collection ID."
}

output "route53_cidr_collection_arns" {
  value       = module.route53.route53_cidr_collection_arns
  description = "The CIDR collection ARN."
}

output "route53_cidr_collection_names" {
  value       = module.route53.route53_cidr_collection_names
  description = "The CIDR collection name."
}

output "route53_cidr_collection_versions" {
  value       = module.route53.route53_cidr_collection_versions
  description = "The CIDR collection version."
}

output "route53_cidr_location_names" {
  value       = module.route53.route53_cidr_location_names
  description = "The CIDR location name."
}

output "route53_cidr_location_collection_ids" {
  value       = module.route53.route53_cidr_location_collection_ids
  description = "The CIDR collection ID."
}

output "route53_cidr_location_cidr_blocks" {
  value       = module.route53.route53_cidr_location_cidr_blocks
  description = "CIDR blocks assigned to the location."
}

output "route53_dnssec_key_signing_key_ids" {
  value       = module.route53.route53_dnssec_key_signing_key_ids
  description = "The key signing key ID."
}

output "route53_dnssec_hosted_zone_ids" {
  value       = module.route53.route53_dnssec_hosted_zone_ids
  description = "The hosted zone ID."
}

output "route53_dnssec_dnskey_records" {
  value       = module.route53.route53_dnssec_dnskey_records
  description = "The DNSKEY record value."
}

output "route53_dnssec_digest_values" {
  value       = module.route53.route53_dnssec_digest_values
  description = "The delegation signer digest."
}

output "route53_dnssec_digest_algorithm_mnemonics" {
  value       = module.route53.route53_dnssec_digest_algorithm_mnemonics
  description = "The delegation signer digest algorithm name."
}

output "route53_dnssec_digest_algorithm_types" {
  value       = module.route53.route53_dnssec_digest_algorithm_types
  description = "The delegation signer digest algorithm number."
}

output "route53_dnssec_flags" {
  value       = module.route53.route53_dnssec_flags
  description = "The DNSKEY flag."
}

output "route53_dnssec_key_tags" {
  value       = module.route53.route53_dnssec_key_tags
  description = "The key tag."
}

output "route53_dnssec_public_keys" {
  value       = module.route53.route53_dnssec_public_keys
  description = "The Base64-encoded public key."
}

output "route53_dnssec_signing_algorithm_mnemonics" {
  value       = module.route53.route53_dnssec_signing_algorithm_mnemonics
  description = "The DNSSEC signing algorithm name."
}

output "route53_dnssec_signing_algorithm_types" {
  value       = module.route53.route53_dnssec_signing_algorithm_types
  description = "The DNSSEC signing algorithm number."
}
