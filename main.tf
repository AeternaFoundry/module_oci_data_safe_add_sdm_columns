resource "oci_data_safe_add_sdm_columns" "data_safe_add_sdm_columns" {
  for_each = var.data_safe_add_sdm_columns

  masking_policy_id = each.value.masking_policy_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

