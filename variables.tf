variable "backup_frameworks" {
  description = <<EOT
Map of backup_frameworks, attributes below
Required:
    - name
    - control (block):
        - input_parameter (optional, block):
            - name (optional)
            - value (optional)
        - name (required)
        - scope (optional, block):
            - compliance_resource_ids (optional)
            - compliance_resource_types (optional)
            - tags (optional)
Optional:
    - description
    - region
    - tags
    - tags_all
EOT

  type = map(object({
    name        = string
    description = optional(string)
    region      = optional(string)
    tags        = optional(map(string))
    tags_all    = optional(map(string))
    control = list(object({
      input_parameter = optional(list(object({
        name  = optional(string)
        value = optional(string)
      })))
      name = string
      scope = optional(object({
        compliance_resource_ids   = optional(set(string))
        compliance_resource_types = optional(set(string))
        tags                      = optional(map(string))
      }))
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.backup_frameworks : (
        length(v.control) >= 1
      )
    ])
    error_message = "Each control list must contain at least 1 items"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

