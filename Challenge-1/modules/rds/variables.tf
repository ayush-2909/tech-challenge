variable "storage_size" {
  type        = string
  description = "storage size for db."
  default     = null
}

variable "engine" {
  type        = string
  description = "engine for db eg: mysql, pgsql."
  default     = null
}

variable "engine_version" {
  type        = string
  description = "version of selected engine."
  default     = null
}

variable "instance_class" {
  type        = string
  description = "type of db instance."
  default     = null
}

variable "db_name" {
  type        = string
  description = "db name."
  default     = null
}

variable "db_username" {
  type        = string
  description = "username for db."
  default     = null
}

variable "db_password" {
  type        = string
  description = "password for db."
  default     = null
}

variable "skip_final_snapshot" {
  type        = string
  description = "skip creating snaphot at deleation."
  default     = null
}

variable "tags" {
  type        = map(string)
  description = "Tags"
}