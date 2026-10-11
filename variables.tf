variable "current_metastore_lookup" {
  description = <<EOT
Map of current_metastore_lookup, attributes below
Optional:
    - metastore_info (block):
        - cloud (optional)
        - created_at (optional)
        - created_by (optional)
        - default_data_access_config_id (optional)
        - delta_sharing_organization_name (optional)
        - delta_sharing_recipient_token_lifetime_in_seconds (optional)
        - delta_sharing_scope (optional)
        - external_access_enabled (optional)
        - global_metastore_id (optional)
        - metastore_id (optional)
        - name (optional)
        - owner (optional)
        - privilege_model_version (optional)
        - region (optional)
        - storage_root (optional)
        - storage_root_credential_id (optional)
        - storage_root_credential_name (optional)
        - updated_at (optional)
        - updated_by (optional)
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    metastore_info = optional(object({
      cloud                                             = optional(string)
      created_at                                        = optional(number)
      created_by                                        = optional(string)
      default_data_access_config_id                     = optional(string)
      delta_sharing_organization_name                   = optional(string)
      delta_sharing_recipient_token_lifetime_in_seconds = optional(number)
      delta_sharing_scope                               = optional(string)
      external_access_enabled                           = optional(bool)
      global_metastore_id                               = optional(string)
      metastore_id                                      = optional(string)
      name                                              = optional(string)
      owner                                             = optional(string)
      privilege_model_version                           = optional(string)
      region                                            = optional(string)
      storage_root                                      = optional(string)
      storage_root_credential_id                        = optional(string)
      storage_root_credential_name                      = optional(string)
      updated_at                                        = optional(number)
      updated_by                                        = optional(string)
    }))
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

