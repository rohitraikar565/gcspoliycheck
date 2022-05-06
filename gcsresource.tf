provider "google" {
  project     = "niveus-delivery-products"
  zone        = "asia-south1"
}
resource "google_storage_bucket" "stat-bucket" {
  name          = "image-store"
  location      = "asia-south1-a"
  force_destroy = true
  uniform_bucket_level_access = true
    versioning {
      enabled = true
    }
}

resource "google_logging_project_bucket_config" "stat-bucket" {
    project     = "niveus-delivery-products"
    location  = "asia-south1-a"
    retention_days = 30
    bucket_id = "image-store"
}
