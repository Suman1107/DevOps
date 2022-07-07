#=======================Instance/output.tf=================#

output "external-ip-of-jump-server" {
  value = google_compute_instance.jump-server.network_interface.0.access_config.0.nat_ip
}