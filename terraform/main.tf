terraform {
  required_version = ">= 1.6.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  project = "kxnwork"
  region  = "asia-south1"
}

resource "google_artifact_registry_repository" "backend" {
  location      = "asia-south1"
  repository_id = "backend-repo"
  format        = "DOCKER"
}
