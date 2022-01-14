variable "description" {
  description = "The name of a new description."
  type        = string
  default     = "tf-testacc-description"
}

variable "node_storage" {
  description = "The specification of the node storage."
  type        = number
  default     = 100
}

variable "security_ips" {
  description = "The specification of the security_ips."
  type        = list(string)
  default     = ["127.0.0.1"]
}

variable "maintain_time" {
  description = "The specification of the maintain time."
  type        = string
  default     = "23:00Z-00:00Z"
}

variable "tags_created" {
  description = "The specification of the tags created."
  type        = string
  default     = "tf-module"
}

variable "tags_for" {
  description = "The specification of the tags for."
  type        = string
  default     = "acceptance-test"
}