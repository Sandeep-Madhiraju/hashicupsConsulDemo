provider "google" {
  # version = "~> 3.45.0"
  project = var.gcp_project_id
  region  = "us-central1"
  credentials = file(".keyring/mythical-legend-325420-cc65ab9236e1.json")
}

provider "google-beta" {
  project = var.gcp_project_id
  region = "us-central1"
  credentials = file(".keyring/mythical-legend-325420-cc65ab9236e1.json")
}

resource "random_string" "env" {
  length  = 4
  special = false
  upper   = false
  number  = false
}
