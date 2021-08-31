resource "alicloud_adb_db_cluster" "this" {
  db_cluster_category = var.category
  db_cluster_class    = var.class
  description         = var.description
  db_node_count       = var.node_count
  db_node_storage     = var.node_storage
  mode                = var.mode
  db_cluster_version  = var.cluster_version
  payment_type        = var.payment_type
  vswitch_id          = var.vswitch_id
  maintain_time       = var.maintain_time
  tags                = {
    Created = var.tags_created
    For     = var.tags_for
  }
  security_ips        = var.security_ips
}
