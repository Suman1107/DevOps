#===================Enternal-IP/main.tf===================#

resource "google_compute_address" "External-ip" {
  name         = "external-ip"
#  subnetwork   = var.public_subnet_id
  address_type = "EXTERNAL"
#  purpose      = "GCE_ENDPOINT"
  project = var.project_id
  region       = var.region
}