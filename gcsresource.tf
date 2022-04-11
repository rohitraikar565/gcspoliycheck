provider "google" {
  credentials = "${file("account.json")}"
  project     = "inframod-training"
  region      = "asia-south1"
  zone        = "asia-south1-a"
}
resource "google_storage_bucket" "static-site" {
  name          = "image-store"
  location      = "asia-south1"
  force_destroy = true
}
