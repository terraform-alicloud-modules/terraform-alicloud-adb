Alicloud ADB Terraform Module On Alibaba Cloud

terraform-alicloud-adb
---


Terraform module which creates ADB instance on Alibaba Cloud.

These types of resources are supported:

* [adb_db_cluster](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/adb_db_cluster)

----------------------

Usage
-----
You can use this in your terraform template with the following steps.

1. Adding a module resource to your template, e.g., main.tf

    ```
       module "adb" {
       source      = "../"
       name        = "tf-adb-cluster"
       description = "Test new adb again."
       }
    ```

2. Setting `access_key` and `secret_key` values through environment variables:

    - ALICLOUD_ACCESS_KEY
    - ALICLOUD_SECRET_KEY
    - ALICLOUD_REGION

## Inputs

| Name | Description | Type | Required | Default |
|------|-------------|:----:|:-----:|:-----:|
| name | The name of a new instance. | string | yes | - | 
| description | The name of description. | string | yes | - | 
| creation | The name of creation. | string | yes | `ADB` | 
| category | The name of category. | string | yes | `Cluster` | 
| class | The name of class. | string | yes | `C8` | 
| node_count | The name of node count. | string | yes | `4` | 
| node_storage | The name of node storage. | string | yes | `400` | 
| mode | The name of mode. | string | yes | `reserver` | 
| cluster_version | The name of cluster version. | string | yes | `3.0` | 
| payment_type | The name of payment type. | string | yes | `PayAsYouGo` | 
| maintain_time | The name of maintain time. | string | yes | `23:00Z-00:00Z` | 
| tags_created | The name of tags created. | string | yes | `TF-update` | 
| tags_for | The name of tags for. | string | yes | `acceptance-test-update` | 
| security_ips | The name of security ips. | string | yes | `["10.168.1.12","10.168.1.11"]` | 
| vpc_cidr_block | The name of vpc cidr block. | string | yes | `172.16.0.0/16` | 
| vswitch_cidr_block | The name of vswitch cidr block. | string | yes | `172.16.0.0/24` | 

## Outputs

| Name | Description |
|------|-------------|
| this_adb_id | The ADB instance ID |
| this_vswitch_id | The vswitch ID |
| this_vpc_id | The VPC ID |

Authors
-------
Created and maintained by He Guimin(@xiaozhu36, heguimin36@163.com)

Reference
---------

* [Terraform-Provider-Alicloud Github](https://github.com/terraform-providers/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://www.terraform.io/docs/providers/alicloud/index.html)
