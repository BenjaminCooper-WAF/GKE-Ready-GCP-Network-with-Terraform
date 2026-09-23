terraform {
  backend "gcs" {
    bucket = "terraform-gke-benji"
    prefix = "terraform/state"
  }
}

