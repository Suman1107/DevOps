#====================Instance-Template/main.tf==========================#

data "google_compute_image" "image" {
  project = "ubuntu-os-cloud"
  family  = "ubuntu-1804-lts"
}

resource "google_compute_disk" "disk" {
  name    = "test-disk"
  project = var.project_id
  type    = "pd-ssd"
  zone    = var.zone
  image   = data.google_compute_image.image.self_link
  size    = var.disk_size
}

resource "google_compute_image" "image" {
  name        = "test-image"
  project     = var.project_id
  description = "This is the image to be used in instance template"
  source_disk = google_compute_disk.disk.id
}