terraform {
  backend "gcs" {
    bucket = "logging-demo-345910-tf-state"
    prefix = "env/prod"
  }
}