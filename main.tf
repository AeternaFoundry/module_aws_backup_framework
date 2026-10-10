resource "aws_backup_framework" "backup_frameworks" {
  for_each = var.backup_frameworks

  name        = each.value.name
  description = each.value.description
  region      = each.value.region
  tags        = each.value.tags
  tags_all    = each.value.tags_all

  dynamic "control" {
    for_each = each.value.control
    content {
      dynamic "input_parameter" {
        for_each = control.value.input_parameter != null ? control.value.input_parameter : []
        content {
          name  = input_parameter.value.name
          value = input_parameter.value.value
        }
      }
      name = control.value.name
      dynamic "scope" {
        for_each = control.value.scope != null ? [control.value.scope] : []
        content {
          compliance_resource_ids   = scope.value.compliance_resource_ids
          compliance_resource_types = scope.value.compliance_resource_types
          tags                      = scope.value.tags
        }
      }
    }
  }
}

