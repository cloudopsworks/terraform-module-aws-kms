##
# (c) 2024 - Cloud Ops Works LLC - https://cloudops.works/
#            On GitHub: https://github.com/cloudopsworks
#            Distributed Under Apache v2.0 License
#

variable "prefix" {
  description = "The prefix to use for the KMS key alias"
  type        = string
  default     = ""
}

variable "config" {
  description = "The configuration for the KMS key"
  type        = any
  default     = {}
}