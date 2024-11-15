##
# (c) 2024 - Cloud Ops Works LLC - https://cloudops.works/
#            On GitHub: https://github.com/cloudopsworks
#            Distributed Under Apache v2.0 License
#

output "kms_key_id" {
  value = module.this.key_id
}

output "kms_key_arn" {
  value = module.this.key_arn
}

output "kms_key_aliases" {
  value = module.this.aliases
}