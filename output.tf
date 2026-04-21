##
# (c) 2021-2026
#     Cloud Ops Works LLC - https://cloudops.works/
#     Find us on:
#       GitHub: https://github.com/cloudopsworks
#       WebSite: https://cloudops.works
#     Distributed Under Apache v2.0 License
#

output "kms_key_id" {
  description = "The globally unique identifier for the KMS key"
  value       = module.this.key_id
}

output "kms_key_arn" {
  description = "The Amazon Resource Name (ARN) of the KMS key"
  value       = module.this.key_arn
}

output "kms_key_aliases" {
  description = "The aliases associated with the KMS key"
  value       = module.this.aliases
}
