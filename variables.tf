variable "alloydb_clusters" {
  description = <<EOT
Map of alloydb_clusters, attributes below
Required:
    - cluster_id
    - location
Optional:
    - annotations
    - cluster_type
    - database_version
    - deletion_policy
    - deletion_protection
    - display_name
    - etag
    - labels
    - project
    - skip_await_major_version_upgrade
    - subscription_type
    - automated_backup_policy (block):
        - backup_window (optional)
        - enabled (optional)
        - encryption_config (optional, block):
            - kms_key_name (optional)
        - labels (optional)
        - location (optional)
        - quantity_based_retention (optional, block):
            - count (optional)
        - time_based_retention (optional, block):
            - retention_period (optional)
        - weekly_schedule (optional, block):
            - days_of_week (optional)
            - start_times (required, block):
                - hours (optional)
                - minutes (optional)
                - nanos (optional)
                - seconds (optional)
    - continuous_backup_config (block):
        - enabled (optional)
        - encryption_config (optional, block):
            - kms_key_name (optional)
        - recovery_window_days (optional)
    - dataplex_config (block):
        - enabled (required)
    - encryption_config (block):
        - kms_key_name (optional)
    - initial_user (block):
        - password (optional)
        - password_wo (optional)
        - password_wo_version (optional)
        - user (optional)
    - maintenance_update_policy (block):
        - maintenance_windows (optional, block):
            - day (required)
            - start_time (required, block):
                - hours (required)
                - minutes (optional)
                - nanos (optional)
                - seconds (optional)
    - network_config (block):
        - allocated_ip_range (optional)
        - network (optional)
    - psc_config (block):
        - psc_enabled (optional)
    - restore_backup_source (block):
        - backup_name (required)
    - restore_backupdr_backup_source (block):
        - backup (required)
    - restore_backupdr_pitr_source (block):
        - data_source (required)
        - point_in_time (required)
    - restore_continuous_backup_source (block):
        - cluster (required)
        - point_in_time (required)
    - secondary_config (block):
        - primary_cluster_name (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    cluster_id                       = string
    location                         = string
    annotations                      = optional(map(string))
    cluster_type                     = optional(string)
    database_version                 = optional(string)
    deletion_policy                  = optional(string)
    deletion_protection              = optional(bool)
    display_name                     = optional(string)
    etag                             = optional(string)
    labels                           = optional(map(string))
    project                          = optional(string)
    skip_await_major_version_upgrade = optional(bool)
    subscription_type                = optional(string)
    automated_backup_policy = optional(object({
      backup_window = optional(string)
      enabled       = optional(bool)
      encryption_config = optional(object({
        kms_key_name = optional(string)
      }))
      labels   = optional(map(string))
      location = optional(string)
      quantity_based_retention = optional(object({
        count = optional(number)
      }))
      time_based_retention = optional(object({
        retention_period = optional(string)
      }))
      weekly_schedule = optional(object({
        days_of_week = optional(list(string))
        start_times = list(object({
          hours   = optional(number)
          minutes = optional(number)
          nanos   = optional(number)
          seconds = optional(number)
        }))
      }))
    }))
    continuous_backup_config = optional(object({
      enabled = optional(bool)
      encryption_config = optional(object({
        kms_key_name = optional(string)
      }))
      recovery_window_days = optional(number)
    }))
    dataplex_config = optional(object({
      enabled = bool
    }))
    encryption_config = optional(object({
      kms_key_name = optional(string)
    }))
    initial_user = optional(object({
      password            = optional(string)
      password_wo         = optional(string)
      password_wo_version = optional(string)
      user                = optional(string)
    }))
    maintenance_update_policy = optional(object({
      maintenance_windows = optional(list(object({
        day = string
        start_time = object({
          hours   = number
          minutes = optional(number)
          nanos   = optional(number)
          seconds = optional(number)
        })
      })))
    }))
    network_config = optional(object({
      allocated_ip_range = optional(string)
      network            = optional(string)
    }))
    psc_config = optional(object({
      psc_enabled = optional(bool)
    }))
    restore_backup_source = optional(object({
      backup_name = string
    }))
    restore_backupdr_backup_source = optional(object({
      backup = string
    }))
    restore_backupdr_pitr_source = optional(object({
      data_source   = string
      point_in_time = string
    }))
    restore_continuous_backup_source = optional(object({
      cluster       = string
      point_in_time = string
    }))
    secondary_config = optional(object({
      primary_cluster_name = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.alloydb_clusters : (
        v.automated_backup_policy == null || (v.automated_backup_policy.weekly_schedule == null || (length(v.automated_backup_policy.weekly_schedule.start_times) >= 1))
      )
    ])
    error_message = "Each start_times list must contain at least 1 items"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

