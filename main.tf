data "databricks_current_metastore" "current_metastore_lookup" {
  for_each = var.current_metastore_lookup


  dynamic "metastore_info" {
    for_each = each.value.metastore_info != null ? [each.value.metastore_info] : []
    content {
      cloud                                             = metastore_info.value.cloud
      created_at                                        = metastore_info.value.created_at
      created_by                                        = metastore_info.value.created_by
      default_data_access_config_id                     = metastore_info.value.default_data_access_config_id
      delta_sharing_organization_name                   = metastore_info.value.delta_sharing_organization_name
      delta_sharing_recipient_token_lifetime_in_seconds = metastore_info.value.delta_sharing_recipient_token_lifetime_in_seconds
      delta_sharing_scope                               = metastore_info.value.delta_sharing_scope
      external_access_enabled                           = metastore_info.value.external_access_enabled
      global_metastore_id                               = metastore_info.value.global_metastore_id
      metastore_id                                      = metastore_info.value.metastore_id
      name                                              = metastore_info.value.name
      owner                                             = metastore_info.value.owner
      privilege_model_version                           = metastore_info.value.privilege_model_version
      region                                            = metastore_info.value.region
      storage_root                                      = metastore_info.value.storage_root
      storage_root_credential_id                        = metastore_info.value.storage_root_credential_id
      storage_root_credential_name                      = metastore_info.value.storage_root_credential_name
      updated_at                                        = metastore_info.value.updated_at
      updated_by                                        = metastore_info.value.updated_by
    }
  }

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

