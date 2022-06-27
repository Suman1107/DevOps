#------variables for VPC Module ------------#

variable "project_id" {
  description = "Enter the project name"
  type        = string
  default     = "hale-courage-351413"
}

#------variables for local Block ------------#

variable "firewall_rules_file" {
  description = "Json File name containing all firewall rules"
  default     = "firewall-rules.json"
}

variable "route_file" {
  description = "JSON file containing all desired routes details"
  default     = "route.json"
}



