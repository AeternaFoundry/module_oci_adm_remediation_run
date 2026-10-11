resource "oci_adm_remediation_run" "adm_remediation_runs" {
  for_each = var.adm_remediation_runs

  remediation_recipe_id = each.value.remediation_recipe_id
  compartment_id        = each.value.compartment_id
  defined_tags          = each.value.defined_tags
  display_name          = each.value.display_name
  freeform_tags         = each.value.freeform_tags

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

