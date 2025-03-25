##
# (c) 2024 - Cloud Ops Works LLC - https://cloudops.works/
#            On GitHub: https://github.com/cloudopsworks
#            Distributed Under Apache v2.0 License
#

## The prefix to use for the KMS key alias - if not provided, the default is "kmskey"
# example: "my-prefix/myOrgUnit-myEnvName-myEnvType-001-uswe2"
variable "prefix" {
  description = "The prefix to use for the KMS key alias"
  type        = string
  default     = ""
}

## The configuration for the KMS key - YAML format
# config:
#   description: "The description for the KMS key" (Optional)
#   key_usage: ENCRYPT_DECRYPT | SIGN_VERIFY | GENERATE_VERIFY_MAC (Optional, defaults ENCRYPT_DECRYPT)
#   deletion_window: 30 (Optional, defaults 30 days)
#   aliases: ["alias1", "alias2"] (Optional, defaults to one generated with the prefix and system_name)
#   key_administrators: ["arn:aws:iam::123456789012:role/admin"] (Optional, defaults to none)
#   key_service_roles_for_autoscaling: ["arn:aws:iam::123456789012:role/autoscaling"] (Optional, defaults to none)
#   key_users: ["arn:aws:iam::123456789012:user/user1"] (Optional, defaults to none)
#   key_service_users: ["arn:aws:iam::123456789012:role/service"] (Optional, defaults to none)
#   grants: {} (Optional, defaults to none)
#   rotation:
#     enabled: true (Optional, defaults to false)
#     period: 90 (Optional, defaults to 90 days)
#   statements: {} (Optional, defaults to none)
variable "config" {
  description = "The configuration for the KMS key"
  type        = any
  default     = {}
}