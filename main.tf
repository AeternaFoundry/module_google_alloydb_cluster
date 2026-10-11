resource "google_alloydb_cluster" "alloydb_clusters" {
  for_each = var.alloydb_clusters

  cluster_id                       = each.value.cluster_id
  location                         = each.value.location
  annotations                      = each.value.annotations
  cluster_type                     = each.value.cluster_type
  database_version                 = each.value.database_version
  deletion_policy                  = each.value.deletion_policy
  deletion_protection              = each.value.deletion_protection
  display_name                     = each.value.display_name
  etag                             = each.value.etag
  labels                           = each.value.labels
  project                          = each.value.project
  skip_await_major_version_upgrade = each.value.skip_await_major_version_upgrade
  subscription_type                = each.value.subscription_type

  dynamic "automated_backup_policy" {
    for_each = each.value.automated_backup_policy != null ? [each.value.automated_backup_policy] : []
    content {
      backup_window = automated_backup_policy.value.backup_window
      enabled       = automated_backup_policy.value.enabled
      dynamic "encryption_config" {
        for_each = automated_backup_policy.value.encryption_config != null ? [automated_backup_policy.value.encryption_config] : []
        content {
          kms_key_name = encryption_config.value.kms_key_name
        }
      }
      labels   = automated_backup_policy.value.labels
      location = automated_backup_policy.value.location
      dynamic "quantity_based_retention" {
        for_each = automated_backup_policy.value.quantity_based_retention != null ? [automated_backup_policy.value.quantity_based_retention] : []
        content {
          count = quantity_based_retention.value.count
        }
      }
      dynamic "time_based_retention" {
        for_each = automated_backup_policy.value.time_based_retention != null ? [automated_backup_policy.value.time_based_retention] : []
        content {
          retention_period = time_based_retention.value.retention_period
        }
      }
      dynamic "weekly_schedule" {
        for_each = automated_backup_policy.value.weekly_schedule != null ? [automated_backup_policy.value.weekly_schedule] : []
        content {
          days_of_week = weekly_schedule.value.days_of_week
          dynamic "start_times" {
            for_each = weekly_schedule.value.start_times
            content {
              hours   = start_times.value.hours
              minutes = start_times.value.minutes
              nanos   = start_times.value.nanos
              seconds = start_times.value.seconds
            }
          }
        }
      }
    }
  }

  dynamic "continuous_backup_config" {
    for_each = each.value.continuous_backup_config != null ? [each.value.continuous_backup_config] : []
    content {
      enabled = continuous_backup_config.value.enabled
      dynamic "encryption_config" {
        for_each = continuous_backup_config.value.encryption_config != null ? [continuous_backup_config.value.encryption_config] : []
        content {
          kms_key_name = encryption_config.value.kms_key_name
        }
      }
      recovery_window_days = continuous_backup_config.value.recovery_window_days
    }
  }

  dynamic "dataplex_config" {
    for_each = each.value.dataplex_config != null ? [each.value.dataplex_config] : []
    content {
      enabled = dataplex_config.value.enabled
    }
  }

  dynamic "encryption_config" {
    for_each = each.value.encryption_config != null ? [each.value.encryption_config] : []
    content {
      kms_key_name = encryption_config.value.kms_key_name
    }
  }

  dynamic "initial_user" {
    for_each = each.value.initial_user != null ? [each.value.initial_user] : []
    content {
      password            = initial_user.value.password
      password_wo         = initial_user.value.password_wo
      password_wo_version = initial_user.value.password_wo_version
      user                = initial_user.value.user
    }
  }

  dynamic "maintenance_update_policy" {
    for_each = each.value.maintenance_update_policy != null ? [each.value.maintenance_update_policy] : []
    content {
      dynamic "maintenance_windows" {
        for_each = maintenance_update_policy.value.maintenance_windows != null ? maintenance_update_policy.value.maintenance_windows : []
        content {
          day = maintenance_windows.value.day
          start_time {
            hours   = maintenance_windows.value.start_time.hours
            minutes = maintenance_windows.value.start_time.minutes
            nanos   = maintenance_windows.value.start_time.nanos
            seconds = maintenance_windows.value.start_time.seconds
          }
        }
      }
    }
  }

  dynamic "network_config" {
    for_each = each.value.network_config != null ? [each.value.network_config] : []
    content {
      allocated_ip_range = network_config.value.allocated_ip_range
      network            = network_config.value.network
    }
  }

  dynamic "psc_config" {
    for_each = each.value.psc_config != null ? [each.value.psc_config] : []
    content {
      psc_enabled = psc_config.value.psc_enabled
    }
  }

  dynamic "restore_backup_source" {
    for_each = each.value.restore_backup_source != null ? [each.value.restore_backup_source] : []
    content {
      backup_name = restore_backup_source.value.backup_name
    }
  }

  dynamic "restore_backupdr_backup_source" {
    for_each = each.value.restore_backupdr_backup_source != null ? [each.value.restore_backupdr_backup_source] : []
    content {
      backup = restore_backupdr_backup_source.value.backup
    }
  }

  dynamic "restore_backupdr_pitr_source" {
    for_each = each.value.restore_backupdr_pitr_source != null ? [each.value.restore_backupdr_pitr_source] : []
    content {
      data_source   = restore_backupdr_pitr_source.value.data_source
      point_in_time = restore_backupdr_pitr_source.value.point_in_time
    }
  }

  dynamic "restore_continuous_backup_source" {
    for_each = each.value.restore_continuous_backup_source != null ? [each.value.restore_continuous_backup_source] : []
    content {
      cluster       = restore_continuous_backup_source.value.cluster
      point_in_time = restore_continuous_backup_source.value.point_in_time
    }
  }

  dynamic "secondary_config" {
    for_each = each.value.secondary_config != null ? [each.value.secondary_config] : []
    content {
      primary_cluster_name = secondary_config.value.primary_cluster_name
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

