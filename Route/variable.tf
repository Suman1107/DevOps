#==================Route/variable.tf=================#

variable "vpc_id" {
  description = "VPC id to be mentioned here. Derived from output of VPC module"
  type        = string
}

variable "project_id" {
  description = "Enter the project name"
  type        = string
  default     = "hale-courage-351413"
}

variable "route_local_file" {
  description = "local JSON file containing all routes details"
}