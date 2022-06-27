#===================Route/main.tf===================#

resource "google_compute_route" "Route" {
  network = var.vpc_id
  project = var.project_id

  for_each = var.route_local_file

  name             = "${var.project_id}-${each.key}-route"
  dest_range       = each.value.dest_range
  next_hop_gateway = each.value.next_hop_gateway
  priority         = each.value.priority
}