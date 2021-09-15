provider "google" {
  # version = "~> 3.45.0"
  project = var.gcp_project_id
  region  = "us-central1"
}

provider "google-beta" {
  project = var.gcp_project_id
  region = "us-central1"
}

resource "random_string" "env" {
  length  = 4
  special = false
  upper   = false
  number  = false
}
