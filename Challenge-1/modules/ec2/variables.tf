variable "ami" {
  type        = string
  description = "AMI Image for the Instance."
  default     = null
}


variable "instance_type" {
  type        = string
  description = "Category and type of instance to be deployed."
  default     = null
}

variable "instance_subnet_id" {
  type        = string
  description = "Subnet to attach."
  default     = null
}

variable "private_ip" {
  type        = list(string)
  description = "Private ip for instance."
  default     = null
}

variable "tags" {
  type        = map(string)
  description = "Tags"
}