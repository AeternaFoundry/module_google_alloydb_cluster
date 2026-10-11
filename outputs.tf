output "alloydb_clusters_id" {
  description = "Map of id values across all alloydb_clusters, keyed the same as var.alloydb_clusters except keys with no id are omitted"
  value       = { for k, v in google_alloydb_cluster.alloydb_clusters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "alloydb_clusters_annotations" {
  description = "Map of annotations values across all alloydb_clusters, keyed the same as var.alloydb_clusters except keys with no annotations are omitted"
  value       = { for k, v in google_alloydb_cluster.alloydb_clusters : k => v.annotations if v.annotations != null && length(v.annotations) > 0 }
}
output "alloydb_clusters_automated_backup_policy" {
  description = "Map of automated_backup_policy values across all alloydb_clusters, keyed the same as var.alloydb_clusters except keys with no automated_backup_policy are omitted"
  value       = { for k, v in google_alloydb_cluster.alloydb_clusters : k => one(v.automated_backup_policy) if v.automated_backup_policy != null && length(v.automated_backup_policy) > 0 }
}
output "alloydb_clusters_backup_source" {
  description = "Map of backup_source values across all alloydb_clusters, keyed the same as var.alloydb_clusters except keys with no backup_source are omitted"
  value       = { for k, v in google_alloydb_cluster.alloydb_clusters : k => v.backup_source if v.backup_source != null && length(v.backup_source) > 0 }
}
output "alloydb_clusters_backupdr_backup_source" {
  description = "Map of backupdr_backup_source values across all alloydb_clusters, keyed the same as var.alloydb_clusters except keys with no backupdr_backup_source are omitted"
  value       = { for k, v in google_alloydb_cluster.alloydb_clusters : k => v.backupdr_backup_source if v.backupdr_backup_source != null && length(v.backupdr_backup_source) > 0 }
}
output "alloydb_clusters_cluster_id" {
  description = "Map of cluster_id values across all alloydb_clusters, keyed the same as var.alloydb_clusters except keys with no cluster_id are omitted"
  value       = { for k, v in google_alloydb_cluster.alloydb_clusters : k => v.cluster_id if v.cluster_id != null && length(v.cluster_id) > 0 }
}
output "alloydb_clusters_cluster_type" {
  description = "Map of cluster_type values across all alloydb_clusters, keyed the same as var.alloydb_clusters except keys with no cluster_type are omitted"
  value       = { for k, v in google_alloydb_cluster.alloydb_clusters : k => v.cluster_type if v.cluster_type != null && length(v.cluster_type) > 0 }
}
output "alloydb_clusters_continuous_backup_config" {
  description = "Map of continuous_backup_config values across all alloydb_clusters, keyed the same as var.alloydb_clusters except keys with no continuous_backup_config are omitted"
  value       = { for k, v in google_alloydb_cluster.alloydb_clusters : k => one(v.continuous_backup_config) if v.continuous_backup_config != null && length(v.continuous_backup_config) > 0 }
}
output "alloydb_clusters_continuous_backup_info" {
  description = "Map of continuous_backup_info values across all alloydb_clusters, keyed the same as var.alloydb_clusters except keys with no continuous_backup_info are omitted"
  value       = { for k, v in google_alloydb_cluster.alloydb_clusters : k => v.continuous_backup_info if v.continuous_backup_info != null && length(v.continuous_backup_info) > 0 }
}
output "alloydb_clusters_database_version" {
  description = "Map of database_version values across all alloydb_clusters, keyed the same as var.alloydb_clusters except keys with no database_version are omitted"
  value       = { for k, v in google_alloydb_cluster.alloydb_clusters : k => v.database_version if v.database_version != null && length(v.database_version) > 0 }
}
output "alloydb_clusters_dataplex_config" {
  description = "Map of dataplex_config values across all alloydb_clusters, keyed the same as var.alloydb_clusters except keys with no dataplex_config are omitted"
  value       = { for k, v in google_alloydb_cluster.alloydb_clusters : k => one(v.dataplex_config) if v.dataplex_config != null && length(v.dataplex_config) > 0 }
}
output "alloydb_clusters_deletion_policy" {
  description = "Map of deletion_policy values across all alloydb_clusters, keyed the same as var.alloydb_clusters except keys with no deletion_policy are omitted"
  value       = { for k, v in google_alloydb_cluster.alloydb_clusters : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "alloydb_clusters_deletion_protection" {
  description = "Map of deletion_protection values across all alloydb_clusters, keyed the same as var.alloydb_clusters except keys with no deletion_protection are omitted"
  value       = { for k, v in google_alloydb_cluster.alloydb_clusters : k => v.deletion_protection if v.deletion_protection != null }
}
output "alloydb_clusters_display_name" {
  description = "Map of display_name values across all alloydb_clusters, keyed the same as var.alloydb_clusters except keys with no display_name are omitted"
  value       = { for k, v in google_alloydb_cluster.alloydb_clusters : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "alloydb_clusters_effective_annotations" {
  description = "Map of effective_annotations values across all alloydb_clusters, keyed the same as var.alloydb_clusters except keys with no effective_annotations are omitted"
  value       = { for k, v in google_alloydb_cluster.alloydb_clusters : k => v.effective_annotations if v.effective_annotations != null && length(v.effective_annotations) > 0 }
}
output "alloydb_clusters_effective_labels" {
  description = "Map of effective_labels values across all alloydb_clusters, keyed the same as var.alloydb_clusters except keys with no effective_labels are omitted"
  value       = { for k, v in google_alloydb_cluster.alloydb_clusters : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "alloydb_clusters_encryption_config" {
  description = "Map of encryption_config values across all alloydb_clusters, keyed the same as var.alloydb_clusters except keys with no encryption_config are omitted"
  value       = { for k, v in google_alloydb_cluster.alloydb_clusters : k => one(v.encryption_config) if v.encryption_config != null && length(v.encryption_config) > 0 }
}
output "alloydb_clusters_encryption_info" {
  description = "Map of encryption_info values across all alloydb_clusters, keyed the same as var.alloydb_clusters except keys with no encryption_info are omitted"
  value       = { for k, v in google_alloydb_cluster.alloydb_clusters : k => v.encryption_info if v.encryption_info != null && length(v.encryption_info) > 0 }
}
output "alloydb_clusters_etag" {
  description = "Map of etag values across all alloydb_clusters, keyed the same as var.alloydb_clusters except keys with no etag are omitted"
  value       = { for k, v in google_alloydb_cluster.alloydb_clusters : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "alloydb_clusters_initial_user" {
  description = "Map of initial_user values across all alloydb_clusters, keyed the same as var.alloydb_clusters except keys with no initial_user are omitted"
  value       = { for k, v in google_alloydb_cluster.alloydb_clusters : k => one(v.initial_user) if v.initial_user != null && length(v.initial_user) > 0 }
  sensitive   = true
}
output "alloydb_clusters_labels" {
  description = "Map of labels values across all alloydb_clusters, keyed the same as var.alloydb_clusters except keys with no labels are omitted"
  value       = { for k, v in google_alloydb_cluster.alloydb_clusters : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "alloydb_clusters_location" {
  description = "Map of location values across all alloydb_clusters, keyed the same as var.alloydb_clusters except keys with no location are omitted"
  value       = { for k, v in google_alloydb_cluster.alloydb_clusters : k => v.location if v.location != null && length(v.location) > 0 }
}
output "alloydb_clusters_maintenance_update_policy" {
  description = "Map of maintenance_update_policy values across all alloydb_clusters, keyed the same as var.alloydb_clusters except keys with no maintenance_update_policy are omitted"
  value       = { for k, v in google_alloydb_cluster.alloydb_clusters : k => one(v.maintenance_update_policy) if v.maintenance_update_policy != null && length(v.maintenance_update_policy) > 0 }
}
output "alloydb_clusters_migration_source" {
  description = "Map of migration_source values across all alloydb_clusters, keyed the same as var.alloydb_clusters except keys with no migration_source are omitted"
  value       = { for k, v in google_alloydb_cluster.alloydb_clusters : k => v.migration_source if v.migration_source != null && length(v.migration_source) > 0 }
}
output "alloydb_clusters_name" {
  description = "Map of name values across all alloydb_clusters, keyed the same as var.alloydb_clusters except keys with no name are omitted"
  value       = { for k, v in google_alloydb_cluster.alloydb_clusters : k => v.name if v.name != null && length(v.name) > 0 }
}
output "alloydb_clusters_network_config" {
  description = "Map of network_config values across all alloydb_clusters, keyed the same as var.alloydb_clusters except keys with no network_config are omitted"
  value       = { for k, v in google_alloydb_cluster.alloydb_clusters : k => one(v.network_config) if v.network_config != null && length(v.network_config) > 0 }
}
output "alloydb_clusters_project" {
  description = "Map of project values across all alloydb_clusters, keyed the same as var.alloydb_clusters except keys with no project are omitted"
  value       = { for k, v in google_alloydb_cluster.alloydb_clusters : k => v.project if v.project != null && length(v.project) > 0 }
}
output "alloydb_clusters_psc_config" {
  description = "Map of psc_config values across all alloydb_clusters, keyed the same as var.alloydb_clusters except keys with no psc_config are omitted"
  value       = { for k, v in google_alloydb_cluster.alloydb_clusters : k => one(v.psc_config) if v.psc_config != null && length(v.psc_config) > 0 }
}
output "alloydb_clusters_reconciling" {
  description = "Map of reconciling values across all alloydb_clusters, keyed the same as var.alloydb_clusters except keys with no reconciling are omitted"
  value       = { for k, v in google_alloydb_cluster.alloydb_clusters : k => v.reconciling if v.reconciling != null }
}
output "alloydb_clusters_restore_backup_source" {
  description = "Map of restore_backup_source values across all alloydb_clusters, keyed the same as var.alloydb_clusters except keys with no restore_backup_source are omitted"
  value       = { for k, v in google_alloydb_cluster.alloydb_clusters : k => one(v.restore_backup_source) if v.restore_backup_source != null && length(v.restore_backup_source) > 0 }
}
output "alloydb_clusters_restore_backupdr_backup_source" {
  description = "Map of restore_backupdr_backup_source values across all alloydb_clusters, keyed the same as var.alloydb_clusters except keys with no restore_backupdr_backup_source are omitted"
  value       = { for k, v in google_alloydb_cluster.alloydb_clusters : k => one(v.restore_backupdr_backup_source) if v.restore_backupdr_backup_source != null && length(v.restore_backupdr_backup_source) > 0 }
}
output "alloydb_clusters_restore_backupdr_pitr_source" {
  description = "Map of restore_backupdr_pitr_source values across all alloydb_clusters, keyed the same as var.alloydb_clusters except keys with no restore_backupdr_pitr_source are omitted"
  value       = { for k, v in google_alloydb_cluster.alloydb_clusters : k => one(v.restore_backupdr_pitr_source) if v.restore_backupdr_pitr_source != null && length(v.restore_backupdr_pitr_source) > 0 }
}
output "alloydb_clusters_restore_continuous_backup_source" {
  description = "Map of restore_continuous_backup_source values across all alloydb_clusters, keyed the same as var.alloydb_clusters except keys with no restore_continuous_backup_source are omitted"
  value       = { for k, v in google_alloydb_cluster.alloydb_clusters : k => one(v.restore_continuous_backup_source) if v.restore_continuous_backup_source != null && length(v.restore_continuous_backup_source) > 0 }
}
output "alloydb_clusters_secondary_config" {
  description = "Map of secondary_config values across all alloydb_clusters, keyed the same as var.alloydb_clusters except keys with no secondary_config are omitted"
  value       = { for k, v in google_alloydb_cluster.alloydb_clusters : k => one(v.secondary_config) if v.secondary_config != null && length(v.secondary_config) > 0 }
}
output "alloydb_clusters_skip_await_major_version_upgrade" {
  description = "Map of skip_await_major_version_upgrade values across all alloydb_clusters, keyed the same as var.alloydb_clusters except keys with no skip_await_major_version_upgrade are omitted"
  value       = { for k, v in google_alloydb_cluster.alloydb_clusters : k => v.skip_await_major_version_upgrade if v.skip_await_major_version_upgrade != null }
}
output "alloydb_clusters_state" {
  description = "Map of state values across all alloydb_clusters, keyed the same as var.alloydb_clusters except keys with no state are omitted"
  value       = { for k, v in google_alloydb_cluster.alloydb_clusters : k => v.state if v.state != null && length(v.state) > 0 }
}
output "alloydb_clusters_subscription_type" {
  description = "Map of subscription_type values across all alloydb_clusters, keyed the same as var.alloydb_clusters except keys with no subscription_type are omitted"
  value       = { for k, v in google_alloydb_cluster.alloydb_clusters : k => v.subscription_type if v.subscription_type != null && length(v.subscription_type) > 0 }
}
output "alloydb_clusters_terraform_labels" {
  description = "Map of terraform_labels values across all alloydb_clusters, keyed the same as var.alloydb_clusters except keys with no terraform_labels are omitted"
  value       = { for k, v in google_alloydb_cluster.alloydb_clusters : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "alloydb_clusters_trial_metadata" {
  description = "Map of trial_metadata values across all alloydb_clusters, keyed the same as var.alloydb_clusters except keys with no trial_metadata are omitted"
  value       = { for k, v in google_alloydb_cluster.alloydb_clusters : k => v.trial_metadata if v.trial_metadata != null && length(v.trial_metadata) > 0 }
}
output "alloydb_clusters_uid" {
  description = "Map of uid values across all alloydb_clusters, keyed the same as var.alloydb_clusters except keys with no uid are omitted"
  value       = { for k, v in google_alloydb_cluster.alloydb_clusters : k => v.uid if v.uid != null && length(v.uid) > 0 }
}

