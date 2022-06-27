#====================Image/output.tf=====================#

output "disk_self_link" {
  value = google_compute_disk.disk.self_link
}

output "image_self_link" {
  value = google_compute_image.image.self_link
}