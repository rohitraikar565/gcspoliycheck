terraform {
  cloud {
    organization = "niveussolutions"
    workspaces {
      id = ["ws-PGx1cfNuXKV3ZDLX"]
    }
  }
}
provider "google" {
  credentials = "${file("inframod-training-09efb368bf98.json")}"
  project     = "inframod-training"
  zone        = "asia-south1-a"
}
resource "google_storage_bucket" "stat-bucket" {
  name          = "image-store"
  location      = "asia-south1"
  force_destroy = true
  uniform_bucket_level_access = true
    versioning {
      enabled = true
    }
}

resource "google_logging_project_bucket_config" "basic" {
    project     = "inframod-training"
    location  = "asia-south1-a"
    retention_days = 30
    bucket_id = "image-store"
    logging {
      enabled = true
    }
}
