#====================Instance/main.tf=====================#

resource "google_compute_instance" "jump-server" {
  name                      = "jump-server"
  project                   = var.project_id
  description               = "jump-server created using Terraform"
  machine_type              = var.machine_type
  zone                      = var.zone
  tags                      = local.instance_tags
  allow_stopping_for_update = "true"

  boot_disk {
    initialize_params {
      size  = var.instance_size
      type  = "pd-standard"
      image = var.image_self_link
    }
  }

  network_interface {
    network    = var.vpc_self_link
    subnetwork = var.public_subnet_self_link
    access_config {
#      nat_ip = var.external_ip
    }
  }
  
  metadata = {
    sshkeys = "${var.user}:${file(var.publickeypath)}"
  }
} 