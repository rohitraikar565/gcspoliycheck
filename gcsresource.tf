provider "google" {
  credentials = "${file("inframod-training-09efb368bf98.json")}"
  project     = "inframod-training"
  zone        = "asia-south1-a"
}
resource "google_storage_bucket" "static-site" {
  name          = "image-store"
  location      = "asia-south1"
  force_destroy = true
}
