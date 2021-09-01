Alicloud ADB Terraform Module On Alibaba Cloud

terraform-alicloud-adb
---

English | [简体中文](README-CN.md)

Terraform module which creates ADB instance on Alibaba Cloud.

These types of resources are supported:

* [adb_db_cluster](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/adb_db_cluster)

----------------------

## Usage

```hcl
module "example" {
  source      = "terraform-alicloud-modules/adb/alicloud"
  description = "Test new adb."
}
```

## Notes

* This module using AccessKey and SecretKey are from `profile` and `shared_credentials_file`. If you have not set them
  yet, please install [aliyun-cli](https://github.com/aliyun/aliyun-cli#installation) and configure it.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | > = 0.13.0 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | > = 1.121.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_alicloud"></a> [alicloud](#provider\_alicloud) | > = 1.121.0 |

## Submit Issues

If you have any problems when using this module, please opening
a [provider issue](https://github.com/aliyun/terraform-provider-alicloud/issues/new) and let us know.

## Authors

Created and maintained by Will(ppnjy@qq.com)

## Reference

* [Terraform-Provider-Alicloud Github](https://github.com/terraform-providers/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://www.terraform.io/docs/providers/alicloud/index.html)
