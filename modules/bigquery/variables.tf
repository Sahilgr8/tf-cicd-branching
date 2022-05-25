variable "dataset_name" {
  type = string
  default=""
}

variable "location" {
  type = string
  default = "us-central1"
}

variable "delete_contents_on_destroy" {
  type = bool
  default = null
}

variable "default_partition_expiration_ms" {
  type = string
  default = null
}

variable "default_table_expiration_ms" {
  type = string
  default = null
}

variable "labels" {
  type = map
  default = {}
}

variable "project_id" {
  type = string
}