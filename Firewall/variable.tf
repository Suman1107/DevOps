#=================Firewall/variable.tf=================#

variable "project_id" {
  description = "Enter the project name"
  type        = string
  default     = "hale-courage-351413"
}

variable "vpc_id" {
  description = "VPC id to be mentioned here. Derived from output of VPC module"
  type        = string
}

variable "priority" {
  description = "priority of this firewall rules"
  type        = number
  default     = 1000
}

variable "firewall_rules_local" {
  description = "Local variable containing all the firewall rules file"
}