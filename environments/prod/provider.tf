
provider "google" {
  # access_token = data.google_service_account_access_token.sa.access_token
  project     = "logging-demo-345910"
  region      = "us-central1"
}

provider "google-beta" {
  # access_token = data.google_service_account_access_token.sa.access_token
  project     = "logging-demo-345910"
  region      = "us-central1"
}