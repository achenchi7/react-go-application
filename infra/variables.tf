variable "key_name" {
  default = "ecs-ec2-key-pair"
  type    = string
}

variable "cidr_block" {
  default = "10.0.0.0/16"
  type    = string
}

variable "docdb_username" {
  type        = string
  description = "Master username for DocumentDB"
  default     = "docdbadmin"
}

variable "docdb_password" {
  type        = string
  description = "Master password for DocumentDB (min 8 characters)"
  sensitive   = true
  default     = "Password1234!"
}

variable "docdb_instance_class" {
  type        = string
  description = "Instance class for DocumentDB"
  default     = "db.t3.medium"
}
