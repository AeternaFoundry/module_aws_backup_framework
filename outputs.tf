output "backup_frameworks_id" {
  description = "Map of id values across all backup_frameworks, keyed the same as var.backup_frameworks"
  value       = { for k, v in aws_backup_framework.backup_frameworks : k => v.id if v.id != null && length(v.id) > 0 }
}
output "backup_frameworks_arn" {
  description = "Map of arn values across all backup_frameworks, keyed the same as var.backup_frameworks"
  value       = { for k, v in aws_backup_framework.backup_frameworks : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "backup_frameworks_control" {
  description = "Map of control values across all backup_frameworks, keyed the same as var.backup_frameworks"
  value       = { for k, v in aws_backup_framework.backup_frameworks : k => v.control if v.control != null && length(v.control) > 0 }
}
output "backup_frameworks_creation_time" {
  description = "Map of creation_time values across all backup_frameworks, keyed the same as var.backup_frameworks"
  value       = { for k, v in aws_backup_framework.backup_frameworks : k => v.creation_time if v.creation_time != null && length(v.creation_time) > 0 }
}
output "backup_frameworks_deployment_status" {
  description = "Map of deployment_status values across all backup_frameworks, keyed the same as var.backup_frameworks"
  value       = { for k, v in aws_backup_framework.backup_frameworks : k => v.deployment_status if v.deployment_status != null && length(v.deployment_status) > 0 }
}
output "backup_frameworks_description" {
  description = "Map of description values across all backup_frameworks, keyed the same as var.backup_frameworks"
  value       = { for k, v in aws_backup_framework.backup_frameworks : k => v.description if v.description != null && length(v.description) > 0 }
}
output "backup_frameworks_name" {
  description = "Map of name values across all backup_frameworks, keyed the same as var.backup_frameworks"
  value       = { for k, v in aws_backup_framework.backup_frameworks : k => v.name if v.name != null && length(v.name) > 0 }
}
output "backup_frameworks_region" {
  description = "Map of region values across all backup_frameworks, keyed the same as var.backup_frameworks"
  value       = { for k, v in aws_backup_framework.backup_frameworks : k => v.region if v.region != null && length(v.region) > 0 }
}
output "backup_frameworks_status" {
  description = "Map of status values across all backup_frameworks, keyed the same as var.backup_frameworks"
  value       = { for k, v in aws_backup_framework.backup_frameworks : k => v.status if v.status != null && length(v.status) > 0 }
}
output "backup_frameworks_tags" {
  description = "Map of tags values across all backup_frameworks, keyed the same as var.backup_frameworks"
  value       = { for k, v in aws_backup_framework.backup_frameworks : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "backup_frameworks_tags_all" {
  description = "Map of tags_all values across all backup_frameworks, keyed the same as var.backup_frameworks"
  value       = { for k, v in aws_backup_framework.backup_frameworks : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

