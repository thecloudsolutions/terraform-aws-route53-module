module "kms" {
  source = "git::https://github.com/thecloudsolutions/terraform-aws-kms-component.git?ref=main"

  kms_map = { for key, kms in var.kms_map :
    key => merge(kms,
      {
        key = try(kms.key, null) != null ? merge(kms.key,
          { policy = try(kms.key.policy, null) != null ? kms.key.policy : try(kms.key.policy_custom_name, null) != null ? module.iam.iam_policy_document_jsons[kms.key.iam_custom_name][kms.key.policy_custom_name] : null }
        ) : null

        external_key = try(kms.external_key, null) != null ? merge(kms.external_key,
          { policy = try(kms.external_key.policy, null) != null ? kms.external_key.policy : try(kms.external_key.policy_custom_name, null) != null ? module.iam.iam_policy_document_jsons[kms.external_key.iam_custom_name][kms.external_key.policy_custom_name] : null }
        ) : null

        grants = { for grant_key, grant in kms.grants :
          grant_key => merge(grant,
            {
              grantee_principal  = try(grant.grantee_principal, null) != null ? grant.grantee_principal : try(grant.grantee_role_custom_name, null) != null ? module.iam.iam_role_arns[grant.grantee_role_custom_name] : try(grant.grantee_user_custom_name, null) != null ? module.iam.iam_user_arns[grant.grantee_iam_custom_name][grant.grantee_user_custom_name] : try(grant.grantee_service_linked_role_custom_name, null) != null ? module.iam.iam_service_linked_role_arns[grant.grantee_iam_custom_name][grant.grantee_service_linked_role_custom_name] : null
              retiring_principal = try(grant.retiring_principal, null) != null ? grant.retiring_principal : try(grant.retiring_role_custom_name, null) != null ? module.iam.iam_role_arns[grant.retiring_role_custom_name] : try(grant.retiring_user_custom_name, null) != null ? module.iam.iam_user_arns[grant.retiring_iam_custom_name][grant.retiring_user_custom_name] : try(grant.retiring_service_linked_role_custom_name, null) != null ? module.iam.iam_service_linked_role_arns[grant.retiring_iam_custom_name][grant.retiring_service_linked_role_custom_name] : null
            }
          )
        }

        replica_keys = { for replica_key, replica in kms.replica_keys :
          replica_key => merge(replica,
            { policy = try(replica.policy, null) != null ? replica.policy : try(replica.policy_custom_name, null) != null ? module.iam.iam_policy_document_jsons[replica.iam_custom_name][replica.policy_custom_name] : null }
          )
        }

        replica_external_keys = { for replica_key, replica in kms.replica_external_keys :
          replica_key => merge(replica,
            { policy = try(replica.policy, null) != null ? replica.policy : try(replica.policy_custom_name, null) != null ? module.iam.iam_policy_document_jsons[replica.iam_custom_name][replica.policy_custom_name] : null }
          )
        }

        key_policy = try(kms.key_policy, null) != null ? merge(kms.key_policy,
          { policy = try(kms.key_policy.policy, null) != null ? kms.key_policy.policy : try(kms.key_policy.policy_custom_name, null) != null ? module.iam.iam_policy_document_jsons[kms.key_policy.iam_custom_name][kms.key_policy.policy_custom_name] : null }
        ) : null
      }
    )
  }
}

module "iam" {
  source = "git::https://github.com/thecloudsolutions/terraform-aws-iam-component.git?ref=main"

  iam_map = var.iam_map
}

module "route53" {
  source = "git::https://github.com/thecloudsolutions/terraform-aws-route53-component.git?ref=main"

  route53_map = {
    for key, route53 in var.route53_map : key => merge(route53, {
      dnssec = route53.dnssec != null ? {
        hosted_zone_id              = route53.dnssec.hosted_zone_id
        key_management_service_arn  = route53.dnssec.key_management_service_arn != null ? route53.dnssec.key_management_service_arn : try(route53.dnssec.replica_key_custom_name, null) != null ? try(module.kms.kms_replica_external_key_arns[route53.dnssec.kms_key_custom_name][route53.dnssec.replica_key_custom_name], module.kms.kms_replica_key_arns[route53.dnssec.kms_key_custom_name][route53.dnssec.replica_key_custom_name]) : module.kms.kms_key_arns[route53.dnssec.kms_key_custom_name]
        name                        = route53.dnssec.name
        status                      = route53.dnssec.status
        signing_status              = route53.dnssec.signing_status
        key_signing_key_timeouts    = route53.dnssec.key_signing_key_timeouts
        hosted_zone_dnssec_timeouts = route53.dnssec.hosted_zone_dnssec_timeouts
      } : null
    })
  }
}

module "delegation_records" {
  source = "git::https://github.com/thecloudsolutions/terraform-aws-route53-component.git?ref=main"

  route53_map = {
    for parent_key, route53 in var.route53_map : parent_key => {
      records = merge({}, [
        for delegation_key, delegation in route53.delegations : merge(
          {
            "${delegation_key}_ns" = {
              zone_id = delegation.parent_zone_id != null ? delegation.parent_zone_id : module.route53.route53_zone_ids[parent_key]
              name    = delegation.child_name != null ? delegation.child_name : var.route53_map[delegation.child_zone_custom_name].zone.name
              type    = "NS"
              ttl     = delegation.ttl
              records = delegation.child_name_servers != null ? delegation.child_name_servers : module.route53.route53_zone_name_servers[delegation.child_zone_custom_name]
            }
          },
          delegation.create_ds ? {
            "${delegation_key}_ds" = {
              zone_id = delegation.parent_zone_id != null ? delegation.parent_zone_id : module.route53.route53_zone_ids[parent_key]
              name    = delegation.child_name != null ? delegation.child_name : var.route53_map[delegation.child_zone_custom_name].zone.name
              type    = "DS"
              ttl     = delegation.ds_ttl != null ? delegation.ds_ttl : delegation.ttl
              records = [delegation.ds_record != null ? delegation.ds_record : module.route53.route53_dnssec_ds_records[delegation.child_zone_custom_name]]
            }
          } : {}
        )
      ]...)
    } if length(route53.delegations) > 0
  }
}
