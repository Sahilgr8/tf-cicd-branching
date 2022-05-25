# Variables for Storage Bucket creation
variable "project_id" {
  type        = string
  description = "GCP Project ID where the bucket will be created."
}

variable "location" {
  type        = string
  description = "Location of the GCS bucket. Available values - https://cloud.google.com/storage/docs/locations."
  default     = "us-central1"
}


variable "storage_class" {
  type        = string
  description = "Storage class of the GCS bucket. Available values - https://cloud.google.com/storage/docs/storage-classes."
  default     = "standard"
}

variable "uniform_bucket_level_access" {
  type = bool
  default = true
}

variable "force_destroy" {
  type = bool
  default = false
}

variable "versioning_enabled" {
  type = bool
  default = false
}

variable "labels" {
  type = map
  default = {}
}

variable "bucket_names" {
  type = list(string)
}

variable "zonasemicruda_folders" {
  type = set(string)
}

variable "zonaconsumo_folders" {
  type = set(string)
}

variable "zonacurada_folders" {
  type = set(string)
}

variable "zonaresultados_folders" {
  type = set(string)
}