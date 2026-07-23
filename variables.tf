variable "route53_map" {
  type = map(object({
    zone = optional(object({
      name              = string
      comment           = optional(string)
      delegation_set_id = optional(string)
      force_destroy     = optional(bool)

      vpc = optional(object({
        vpc_id     = string
        vpc_region = optional(string)
      }))

      tags = optional(map(string))
    }))

    records = optional(map(object({
      name    = string
      type    = string
      zone_id = optional(string)
      ttl     = optional(number)
      # (Required for non-alias records) The TTL of the record.
      records = optional(list(string))
      # (Required for non-alias records) A string list of records.
      dns_records     = optional(string)
      set_identifier  = optional(string)
      health_check_id = optional(string)

      alias = optional(object({
        name                   = string
        zone_id                = optional(string)
        evaluate_target_health = bool
      }))

      failover_routing_policy = optional(object({
        type = string
      }))

      geolocation_routing_policy = optional(object({
        continent   = string
        country     = string
        subdivision = string
      }))

      latency_routing_policy = optional(object({
        region = string
      }))

      weighted_routing_policy = optional(object({
        weight = number
      }))

      multivalue_answer_routing_policy = optional(bool)
      allow_overwrite                  = optional(bool)
    })), {})
  }))

  description = "Keyed collection of route53 definitions."
}
