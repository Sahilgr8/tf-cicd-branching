terraform {
  backend "gcs" {
    bucket = "logging-demo-345910-tfstate"
    prefix = "env/prod"
  }
}