variable "data_safe_add_sdm_columns" {
  description = <<EOT
Map of data_safe_add_sdm_columns, attributes below
Required:
    - masking_policy_id
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    masking_policy_id = string
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

