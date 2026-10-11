variable "adm_remediation_runs" {
  description = <<EOT
Map of adm_remediation_runs, attributes below
Required:
    - remediation_recipe_id
Optional:
    - compartment_id
    - defined_tags
    - display_name
    - freeform_tags
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    remediation_recipe_id = string
    compartment_id        = optional(string)
    defined_tags          = optional(map(string))
    display_name          = optional(string)
    freeform_tags         = optional(map(string))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

