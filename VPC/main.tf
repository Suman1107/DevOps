#=======================VPC/main.tf============================#

resource "google_compute_network" "vpc" {
  project                 = var.project_name
  description             = "VPC Network created for DevOps Project"
  name                    = var.vpc_name
  auto_create_subnetworks = false
  routing_mode            = "GLOBAL"
  lifecycle {
    create_before_destroy = true
  }
}