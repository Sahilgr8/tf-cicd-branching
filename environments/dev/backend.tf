terraform {
  backend "gcs" {
    bucket = "spring-gift-345910-tfstate"
    prefix = "env/dev"
  }
}