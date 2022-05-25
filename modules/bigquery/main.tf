#Creating a bigquery dataset

resource "google_bigquery_dataset" "data_set" {
  dataset_id                  = var.dataset_name
  project = var.project_id
  description                 = "This is a bigquery dataset"
  location                    = var.location
  delete_contents_on_destroy = var.delete_contents_on_destroy
  default_table_expiration_ms = var.default_table_expiration_ms
  default_partition_expiration_ms = var.default_partition_expiration_ms
  labels = var.labels
}
