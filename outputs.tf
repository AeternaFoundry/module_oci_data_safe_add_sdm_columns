output "data_safe_add_sdm_columns_id" {
  description = "Map of id values across all data_safe_add_sdm_columns, keyed the same as var.data_safe_add_sdm_columns except keys with no id are omitted"
  value       = { for k, v in oci_data_safe_add_sdm_columns.data_safe_add_sdm_columns : k => v.id if v.id != null && length(v.id) > 0 }
}
output "data_safe_add_sdm_columns_masking_policy_id" {
  description = "Map of masking_policy_id values across all data_safe_add_sdm_columns, keyed the same as var.data_safe_add_sdm_columns except keys with no masking_policy_id are omitted"
  value       = { for k, v in oci_data_safe_add_sdm_columns.data_safe_add_sdm_columns : k => v.masking_policy_id if v.masking_policy_id != null && length(v.masking_policy_id) > 0 }
}

