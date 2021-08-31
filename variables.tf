variable "description" {
  description = "The name of a new description."
  type        = string
  default     = "Test new adb."
}

variable "category" {
  description = "The specification of the category."
  type        = string
  default     = "Cluster"
}

variable "class" {
  description = "The specification of the class."
  type        = string
  default     = "C8"
}

variable "node_count" {
  description = "The specification of the node count."
  type        = string
  default     = "4"
}

variable "node_storage" {
  description = "The specification of the node storage."
  type        = string
  default     = "400"
}

variable "mode" {
  description = "The specification of the mode."
  type        = string
  default     = "reserver"
}

variable "cluster_version" {
  description = "The specification of the cluster version."
  type        = string
  default     = "3.0"
}

variable "payment_type" {
  description = "The specification of the payment type."
  type        = string
  default     = "PayAsYouGo"
}

variable "maintain_time" {
  description = "The specification of the maintain time."
  type        = string
  default     = "23:00Z-00:00Z"
}

variable "tags_created" {
  description = "The specification of the tags created."
  type        = string
  default     = "TF-update"
}

variable "tags_for" {
  description = "The specification of the tags for."
  type        = string
  default     = "acceptance-test-update"
}

variable "security_ips" {
  description = "The specification of the security_ips."
  type        = list(string)
  default     = ["10.168.1.12","10.168.1.11"]
}

variable "availability_zone" {
  description = "The available zone to launch modules."
  type        = string
  default     = ""
}

variable "vswitch_id" {
  description = "VSwitch variables, if vswitch_id is empty, then the net_type = classic."
  type        = string
  default     = ""
}
