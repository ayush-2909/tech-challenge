variable "lb_name" {
  type        = string
  description = "Load balancer name."
  default     = null
}

variable "bucket_name" {
  type        = string
  description = "s3 bucket name for logs."
  default     = null
}

variable "internal" {
  type        = string
  description = "lb mode."
  default     = null
}

variable "lb_type" {
  type        = string
  description = "load balancer type eg: application, network, gateway."
  default     = null
}

variable "deletion_protection" {
  type        = string
  description = "prevent deletion"
  default     = null
}

variable "logspace_prefix" {
  type        = string
  description = "prefix for log folder."
  default     = null
}

variable "log_enabled" {
  type        = string
  description = "enable logging."
  default     = null
}

variable "sg" {
  type        = list(string)
  description = "security groups to attach"
  default     = null
}

variable "subnet_id" {
  type        = string
  description = "subnets to attach."
  default     = null
}

variable "tags" {
  type        = map(string)
  description = "Tags"
}