#===============External-Ip/variable.tf===============#

variable "public_subnet_id" {
  description = "public subnet id from which an IP will be choosen for External IP"
}

variable "project_id" {
  description = "Enter the project name"
  type        = string
  default     = "hale-courage-351413"
}

variable "region" {
  description = "Enter the region in which this resource will be created"
  type        = string
  default     = "us-central1"
}