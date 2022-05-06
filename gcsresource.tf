provider "google" {
  project     = "tesing-342306"
  zone        = "asia-south1"
  export TF_VAR_credentials = "credentials"
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
