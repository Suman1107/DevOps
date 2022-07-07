#===============External-ip/output.tf============#

output "external_ip" {
  value = google_compute_address.External-ip.address
}