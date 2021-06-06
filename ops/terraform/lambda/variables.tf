variable "account" {
  default = ""
}

variable "function_name" {
  default = "nodejs-test-app"
}

variable "filename" {
  default = "nodejs-test-app"
}

variable "handler" {
  default = ""
}

variable "runtime" {
  default = ""
}

variable "timeout" {
  default = ""
}

variable "memory_size" {
  default = ""
}

variable "subnet_ids" {
  type = "list"
  default = []
}

variable "security_group_ids" {
  type = "list"
  default = []
}

variable "api_name" {
  default = ""
}

variable "redis_url" {
  default = ""
}