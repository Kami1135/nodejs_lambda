//Variables for redis without replication_group_id

variable "subnet_group_name" {
  default = ""
}

variable "cluster_id" {}

variable "engine_version" {
  default = ""
}

variable "maintenance_window" {
  default = "sun:01:00-sun:02:00"
}

variable "snapshot_window" {
  default = ""
}

variable "node_type" {}

variable "parameter_group_name" {}

variable "apply_immediately" {
  default = false
}

variable "num_cache_nodes" {}

variable "snapshot_retention_limit" {
  default = "0"
}

variable "notification_topic_arn" {
  default = ""
}

variable "az_mode" {
  default = "single-az"
}

variable "availability_zone" {
  default = ""
}

variable "preferred_availability_zones" {
  default = []
}

#(Optional) A single-element string list containing an Amazon Resource Name (ARN) of a Redis RDB snapshot file stored in Amazon S3. Example: arn:aws:s3:::my_bucket/snapshot1.rdb
variable "snapshot_arns" {
  default = []
}

# (Optional) The name of a snapshot from which to restore data into the new node group. Changing the snapshot_name forces a new resource.
variable "snapshot_name" {
  default = ""
}

variable "security_group_ids" {
  type = "list"
  default = []
}

variable "user_tags" {
  type    = "map"
  default = {}
}

variable "team" {}

variable "service" {}

variable "port" {
    default = "6379"
}

variable "engine" {}