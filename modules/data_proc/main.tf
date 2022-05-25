resource "google_dataproc_cluster" "demo" {
  name     = var.name
  region   = var.region
  labels = var.labels

  cluster_config {

    master_config {
      num_instances = var.master_instances_count
      machine_type  = var.master_machine_type
      min_cpu_platform = var.master_mini_cpu_platform
      disk_config {
        boot_disk_type    = var.master_boot_disk_type
        boot_disk_size_gb = var.master_boot_disk_size_gb
        num_local_ssds    = var.master_num_local_ssd
      }
    }

    worker_config {
      num_instances    = var.worker_instances_count
      machine_type     = var.worker_machine_type
      min_cpu_platform = var.worker_mini_cpu_platform
      disk_config {
        boot_disk_type = var.worker_boot_disk_type
        boot_disk_size_gb = var.worker_boot_disk_size_gb
        num_local_ssds    = var.worker_num_local_ssd
      }
    }
    gce_cluster_config {
      # One of the below to hook into a custom network / subnetwork
      # network    = var.network
      service_account = var.service_account
      service_account_scopes = [
        "cloud-platform"
      ]
      subnetwork = var.subnetwork
      zone = var.zone
      internal_ip_only = true
    }
    preemptible_worker_config{
      num_instances = var.preemptible_num_instances
      disk_config {
        boot_disk_type    = var.preemptible_boot_disk_type
        boot_disk_size_gb = var.preemptible_boot_disk_size
        num_local_ssds    = var.preemptible_num_local_ssds
      }
    }
  }
}
