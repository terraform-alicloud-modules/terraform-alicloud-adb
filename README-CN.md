Alicloud ADB Terraform Module On Alibaba Cloud

terraform-alicloud-adb
---

[English](README.md) | 简体中文

本 Module 用于在阿里云的 VPC 下创建一个分析型数据库。

本 Module 支持创建以下资源:

* [分析型数据库](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/adb_db_cluster)

----------------------

## 版本要求
| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.0 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | >= 1.131.0 |

## Providers
| Name | Version |
|------|---------|
| <a name="provider_alicloud"></a> [alicloud](#provider\_alicloud) | >= 1.131.0 |


## 用法
    ```
       module "adb" {
       source      = "../"
       name        = "tf-adb-cluster"
       description = "Test new adb again."
       }
    ```


## 注意事项
本 Module 使用的 AccessKey 和 SecretKey 可以直接从 `profile` 和 `shared_credentials_file` 中获取。如果未设置，可通过下载安装 [aliyun-cli](https://github.com/aliyun/aliyun-cli#installation) 后进行配置。

    - ALICLOUD_ACCESS_KEY
    - ALICLOUD_SECRET_KEY
    - ALICLOUD_REGION

## 提交问题
如果在使用该 Terraform Module 的过程中有任何问题，可以直接创建一个 [Provider Issue](https://github.com/aliyun/terraform-provider-alicloud/issues/new)，我们将根据问题描述提供解决方案。

## 参数
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

## 输出
| Name | Description |
|------|-------------|
| this_adb_id | The ADB instance ID |
| this_vswitch_id | The vswitch ID |
| this_vpc_id | The VPC ID |

## 作者
Created and maintained by He Guimin(@xiaozhu36, heguimin36@163.com)

## 相关
* [Terraform-Provider-Alicloud Github](https://github.com/terraform-providers/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://www.terraform.io/docs/providers/alicloud/index.html)
