#=====================Firewall/main.tf=======================#

resource "google_compute_firewall" "Firewall" {
  project   = var.project_id
  network   = var.vpc_id
  priority  = var.priority
  direction = "INGRESS"

  for_each = var.firewall_rules_local

  name = "${var.project_id}-allow-${each.key}"
  allow {
    protocol = each.value.protocol
    ports    = split(",", each.value.ports)
  }
  source_ranges = contains(keys(each.value), "source_ranges") ? split(",", each.value.source_ranges) : null
  target_tags   = contains(keys(each.value), "target_tags") ? split(",", each.value.target_tags) : null
}
