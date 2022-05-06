provider "google" {
  project     = "tesing-342306"
  zone        = "asia-south1-a"
}
resource "google_storage_bucket" "xpcs" {
  name          = "image-store"
  location      = "asia-south1-a"
  force_destroy = true
  uniform_bucket_level_access = true
    versioning {
      enabled = true
    }
}

resource "google_logging_project_bucket_config" "xpcs" {
    project     = "niveus-delivery-products"
    location  = "asia-south1-a"
    retention_days = 30
    bucket_id = "image-store"
}
