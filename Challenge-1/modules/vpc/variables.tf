variable "subnet_zone" {
  type        = string
  description = "Subnet zone."
  default     = null
}


variable "vpc_cidr_block" {
  type        = string
  description = "ip range."
  default     = null
}

variable "subnet_cidr_block" {
  type        = string
  description = "ip range for subnet."
  default     = null
}

variable "tags" {
  type        = map(string)
  description = "Tags"
}