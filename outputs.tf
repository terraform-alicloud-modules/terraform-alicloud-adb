locals {
  this_adb_id     = alicloud_adb_db_cluster.this.id
  this_vswitch_id = alicloud_vswitch.default.id
  this_vpc_id     = alicloud_vpc.default.id
}

output "this_adb_id" {
  value = local.this_adb_id
}

output "this_vswitch_id" {
  value = local.this_vswitch_id
}

output "this_vpc_id" {
  value = local.this_vpc_id
}
