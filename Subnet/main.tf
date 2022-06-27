#=======================Subnet/main.tf========================#

resource "google_compute_subnetwork" "private-subnet" {
  name                     = var.private_subnet_name
  ip_cidr_range            = var.private_subnet_cidr
  network                  = var.vpc_id
  region                   = var.region
  project                  = var.project_id
  private_ip_google_access = false
}

resource "google_compute_subnetwork" "public-subnet" {
  name                     = var.public_subnet_name
  ip_cidr_range            = var.public_subnet_cidr
  network                  = var.vpc_id
  region                   = var.region
  project                  = var.project_id
  private_ip_google_access = true
}