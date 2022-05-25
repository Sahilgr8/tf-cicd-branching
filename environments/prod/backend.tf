terraform {
  backend "gcs" {
    bucket = "logging-demo-345910"
    prefix = "env/prod"
  }
}