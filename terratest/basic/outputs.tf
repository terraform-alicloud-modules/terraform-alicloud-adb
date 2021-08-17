locals {
  this_description         = alicloud_adb_db_cluster.this.description
  this_db_cluster_category = alicloud_adb_db_cluster.this.db_cluster_category
  this_db_node_count       = alicloud_adb_db_cluster.this.db_node_count
  this_payment_type        = alicloud_adb_db_cluster.this.payment_type
}

output "this_description" {
  value = local.this_description
}

output "this_db_cluster_category" {
  value = local.this_db_cluster_category
}

output "this_db_node_count" {
  value = local.this_db_node_count
}

output "this_payment_type" {
  value = local.this_payment_type
}
