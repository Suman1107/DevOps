output "private_subnet_self_link" {
  value = google_compute_subnetwork.private-subnet.self_link
}

output "public_subnet_self_link" {
  value = google_compute_subnetwork.public-subnet.self_link
}

output "public_subnet_id" {
  value = google_compute_subnetwork.public-subnet.id
}