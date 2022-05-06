provider "google" {
  project     = "tesing-342306"
  zone        = "asia-south1"
}
resource "google_storage_bucket" "static-site" {
  name          = "image-store.com"
  location      = "EU"
  force_destroy = true
  

  uniform_bucket_level_access = true
}
/*

resource "google_logging_project_bucket_config" "xpcs" {
    project     = "niveus-delivery-products"
    location  = "asia-south1-a"
    retention_days = 30
    bucket_id = "image-store"
}
*/
