##
# (c) 2021-2026
#     Cloud Ops Works LLC - https://cloudops.works/
#     Find us on:
#       GitHub: https://github.com/cloudopsworks
#       WebSite: https://cloudops.works
#     Distributed Under Apache v2.0 License
#

# prefix: "" # (Optional) The prefix to use for the KMS key alias. Default: "kmskey"
# example: "my-prefix/myOrgUnit-myEnvName-myEnvType-001-uswe2"
variable "prefix" {
  description = "The prefix to use for the KMS key alias. If empty, defaults to 'kmskey/<system_name>'"
  type        = string
  default     = ""
}

# config: # (Optional) The configuration for the KMS key. Default: {}
#   description: "The description for the KMS key"  # (Optional) Human-readable description. Default: "KMS key - <system_name>"
#   key_usage: ENCRYPT_DECRYPT                       # (Optional) Intended use of the key. Valid values: ENCRYPT_DECRYPT, SIGN_VERIFY, GENERATE_VERIFY_MAC. Default: ENCRYPT_DECRYPT
#   deletion_window: 30                              # (Optional) Waiting period in days before deleting the key (7-30). Default: 30
#   aliases:                                         # (Optional) List of aliases for the key. Default: one alias derived from prefix + system_name
#     - "alias/my-key"
#   policy:                                          # (Optional) IAM policy principals for the key
#     administrators:                                # (Optional) List of IAM ARNs granted key administration. Default: []
#       - "arn:aws:iam::123456789012:role/admin"
#     service_roles_for_autoscaling:                 # (Optional) List of IAM ARNs for autoscaling service roles. Default: []
#       - "arn:aws:iam::123456789012:role/autoscaling"
#     users:                                         # (Optional) List of IAM ARNs granted key usage. Default: []
#       - "arn:aws:iam::123456789012:user/user1"
#     service_users:                                 # (Optional) List of IAM ARNs for service users. Default: []
#       - "arn:aws:iam::123456789012:role/service"
#   grants: {}                                       # (Optional) Map of grants for the key. Default: {}
#   rotation:                                        # (Optional) Key rotation settings
#     enabled: false                                 # (Optional) Enable automatic key rotation. Default: false
#     period: 90                                     # (Optional) Rotation period in days. Default: 90
#   statements: {}                                   # (Optional) Additional IAM key policy statements. Default: {}
variable "config" {
  description = "The configuration for the KMS key, including description, key_usage, deletion_window, aliases, policy (administrators, service_roles_for_autoscaling, users, service_users), grants, rotation, and statements"
  type        = any
  default     = {}
}