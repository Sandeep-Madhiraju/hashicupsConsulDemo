provider "aws" {
  # version = "~> 3.0"
  region  = "us-east-1"
}

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

provider "azurerm" {
  # version = "=2.47.0"
  features {}

  # use_msi = true
  subscription_id = "14692f20-9428-451b-8298-102ed4e39c2a"
  client_id = "5612c2aa-d1da-4b37-af5a-8c90addacb3c"
  client_secret = var.azure_client_secret
  tenant_id = "0e3e2e88-8caf-41ca-b4da-e3b33b6c52ec"
}

resource "random_string" "env" {
  length  = 4
  special = false
  upper   = false
  number  = false
}
