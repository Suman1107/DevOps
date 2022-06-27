#===================locals================#

locals {
  firewall_rules = jsondecode(file(var.firewall_rules_file))
}

locals {
  routes = jsondecode(file(var.route_file))
}
