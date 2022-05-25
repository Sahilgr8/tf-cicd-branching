# module "bigquery" {
#   source="../modules/bigquery"
#   dataset_name = "03p_datalake2_gbq_zonacruda_d02"
#   labels = var.labels
#   project_id = var.project_id
# }
# module "data_proc" {
#   source = "../modules/data_proc"
#   name = "o3p-datalake2-gdp-hist-d04"
#   region = var.region
#   master_instances_count=1
#   worker_instances_count=2
#   master_machine_type = "n1-standard-2"
#   worker_machine_type ="n1-standard-4" 
#   master_boot_disk_type = "pd-ssd"
#   master_boot_disk_size_gb=50
#   worker_boot_disk_size_gb=1000
#   service_account = var.service_account
#   worker_mini_cpu_platform="Intel Skylake"
#   worker_num_local_ssd = 1
#   subnetwork = "projects/q-gcp-6614-host-davivien-22-05/regions/us-central1/subnetworks/us-central1-subnet"
#   labels = var.labels
# }

module "gcs" {
  source = "../../modules/gcs"
  bucket_names = var.bucket_names
  zonaconsumo_folders = var.zonaconsumo_folders
  zonasemicruda_folders = var.zonasemicruda_folders
  zonaresultados_folders = var.zonaresultados_folders
  zonacurada_folders = var.zonacurada_folders
  project_id = "spring-gift-345910"
  location = var.region
  labels = var.labels
}

