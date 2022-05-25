variable "name" {
  type=string
}

variable "region" {
  type=string
  default = "us-central1"
}

variable "master_instances_count" {
  type=number
  default = 1
}

variable "worker_instances_count" {
  type=number
  default = 2
}

variable "worker_machine_type" {
  type=string
  default = "n1-standard-4"
}

variable "master_machine_type" {
  type=string
  default = "n1-standard-2"
}

variable "master_boot_disk_type" {
  type=string
  default = "pd-ssd"
}

variable "master_boot_disk_size_gb" {
  type=number
  default = 50
}

variable "worker_boot_disk_size_gb" {
  type=number
  default = 1000
}

variable "worker_num_local_ssd" {
  type = number
  default = 1
}

variable "worker_mini_cpu_platform" {
  type = string
  default = "Intel Skylake"
}

variable "master_mini_cpu_platform" {
  type = string
  default = "Intel Skylake"
}

# variable "network" {
#   type = string
# }
variable "zone" {
  type = string
  default = "us-central1-b"
}
variable "labels" {
  type = map
  default= {}
}

variable "subnetwork" {
  type=string
}

variable "preemptible_num_instances" {
  type = number
  default = 0
}

variable "preemptible_boot_disk_size" {
  type = number
  default = 100
}

variable "preemptible_boot_disk_type" {
  type=string
  default="pd-ssd"
}

variable "preemptible_num_local_ssds" {
  type = number
  default=0
}

variable "worker_boot_disk_type" {
  type=string
  default = "pd-ssd"
}

variable "master_num_local_ssd" {
  type = number
  default = 1
}
variable "service_account" {
  type=string
}

