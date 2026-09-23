terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}
provider "google" {
  project = "benjiondblock-class7point5"
  region  = "us-central1"
}
