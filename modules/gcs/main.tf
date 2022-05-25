resource "google_storage_bucket" "storage_bucket" {
  for_each = toset(var.bucket_names)
  project                     = var.project_id
  name                        = each.key
  location                    = var.location
  storage_class               = var.storage_class
  uniform_bucket_level_access = var.uniform_bucket_level_access
  force_destroy               = var.force_destroy
  labels = var.labels

  versioning {
    enabled = var.versioning_enabled
  }
}
locals {
  zonacruda_buckets = toset([for i in range(length(var.bucket_names)):var.bucket_names[i] if(contains(split("-",var.bucket_names[i]),"zonacruda"))])
  zonasemicruda_bucket=tolist([for i in range(length(var.bucket_names)):var.bucket_names[i] if(contains(split("-",var.bucket_names[i]),"zonasemicruda"))])
  zonacurada_bucket=tolist([for i in range(length(var.bucket_names)):var.bucket_names[i] if(contains(split("-",var.bucket_names[i]),"zonacurada"))])
  zonaconsumo_bucket=tolist([for i in range(length(var.bucket_names)):var.bucket_names[i] if(contains(split("-",var.bucket_names[i]),"zonaconsumo"))])
  zonaresultados_bucket=tolist([for i in range(length(var.bucket_names)):var.bucket_names[i] if(contains(split("-",var.bucket_names[i]),"zonaresultados"))])
}
resource "google_storage_bucket_object" "landing_folder" {
  name = "landing/"
  for_each = local.zonacruda_buckets
  bucket  = each.key
  content = "folder_content"
}

resource "google_storage_bucket_object" "indicted_folder" {
  name = "indicted/"
  for_each = local.zonacruda_buckets
  bucket  = each.key
  content = "folder_content"
}

resource "google_storage_bucket_object" "zonasemicruda_bucket_folders" {
  for_each = var.zonasemicruda_folders
  name = each.key
  bucket  = local.zonasemicruda_bucket[0]
  content = "folder_content"
}

resource "google_storage_bucket_object" "zonacurada_bucket_folders" {
  for_each = var.zonacurada_folders
  name = each.key
  bucket  = local.zonacurada_bucket[0]
  content = "folder_content"
}

resource "google_storage_bucket_object" "zonaconsumo_bucket_folders" {
  for_each = var.zonaconsumo_folders
  name = each.key
  bucket  = local.zonaconsumo_bucket[0]
  content = "folder_content"
}

resource "google_storage_bucket_object" "zonaresultados_bucket_folders" {
  for_each = var.zonaresultados_folders
  name = each.key
  bucket  = local.zonaresultados_bucket[0]
  content = "folder_content"
}