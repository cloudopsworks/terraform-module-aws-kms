##
# (c) 2024 - Cloud Ops Works LLC - https://cloudops.works/
#            On GitHub: https://github.com/cloudopsworks
#            Distributed Under Apache v2.0 License
#

locals {
  key_alias = var.prefix != "" ? format("%s/%s", var.prefix, local.system_name) : format("kmskey/%s", local.system_name)
}

module "this" {
  source  = "terraform-aws-modules/kms/aws"
  version = "3.1.1"

  description                       = try(var.config.description, "KMS key - ${local.system_name}")
  key_usage                         = try(var.config.key_usage, "ENCRYPT_DECRYPT")
  deletion_window_in_days           = try(var.config.deletion_window, 30)
  aliases                           = try(var.config.aliases, [local.key_alias])
  key_administrators                = try(var.config.policy.administrators, [])
  key_service_roles_for_autoscaling = try(var.config.policy.service_roles_for_autoscaling, [])
  key_users                         = try(var.config.policy.users, [])
  key_service_users                 = try(var.config.policy.service_users, [])
  grants                            = try(var.config.grants, {})
  enable_key_rotation               = try(var.config.rotation.enabled, false)
  rotation_period_in_days           = try(var.config.rotation.period, 90)
  tags                              = local.all_tags
}

