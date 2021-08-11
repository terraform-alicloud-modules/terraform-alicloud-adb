terraform {
  required_providers {
    alicloud = {
      source  = "aliyun/alicloud"
      version = "1.126.0"
    }
  }
}


data "alicloud_zones" "default" {
  available_resource_creation = var.creation
}

resource "alicloud_vpc" "default" {
  vpc_name   = var.name
  cidr_block = var.vpc_cidr_block
}

resource "alicloud_vswitch" "default" {
  vpc_id       = alicloud_vpc.default.id
  cidr_block   = var.vswitch_cidr_block
  zone_id      = data.alicloud_zones.default.zones[0].id
  vswitch_name = var.name
}

resource "alicloud_adb_db_cluster" "this" {
  db_cluster_category = var.category
  db_cluster_class    = var.class
  description         = var.description
  db_node_count       = var.node_count
  db_node_storage     = var.node_storage
  mode                = var.mode
  db_cluster_version  = var.cluster_version
  payment_type        = var.payment_type
  vswitch_id          = alicloud_vswitch.default.id
  maintain_time       = var.maintain_time
  tags                = {
    Created = var.tags_created
    For     = var.tags_for
  }
  security_ips        = var.security_ips
}
