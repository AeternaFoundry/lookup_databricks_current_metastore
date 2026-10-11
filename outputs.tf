output "current_metastore_lookup_id" {
  description = "Map of id values across all current_metastore_lookup, keyed the same as var.current_metastore_lookup except keys with no id are omitted"
  value       = { for k, v in data.databricks_current_metastore.current_metastore_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "current_metastore_lookup_metastore_info" {
  description = "Map of metastore_info values across all current_metastore_lookup, keyed the same as var.current_metastore_lookup except keys with no metastore_info are omitted"
  value       = { for k, v in data.databricks_current_metastore.current_metastore_lookup : k => one(v.metastore_info) if v.metastore_info != null && length(v.metastore_info) > 0 }
}
output "current_metastore_lookup_provider_config" {
  description = "Map of provider_config values across all current_metastore_lookup, keyed the same as var.current_metastore_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_current_metastore.current_metastore_lookup : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}

