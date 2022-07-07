#====================Instance/variable.tf=====================#

variable "project_id" {
  description = "Enter the project name"
  type        = string
  default     = "hale-courage-351413"
}

variable "machine_type" {
  description = "Enter machine_type for the Instance."
  type        = string
  default     = "e2-medium"
}

variable "zone" {
  description = "Enter the zone for the Instance"
  type        = string
  default     = "us-central1-a"
}

variable "instance_size" {
  description = "Enter size of the instance in GB"
  type        = number
  default     = 10
}

variable "image_self_link" {
  description = "Refer to Image module ouputfor self-help link"
}

variable "vpc_self_link" {
  description = "Self-link of the custom network to be used."
}

variable "public_subnet_self_link" {
  description = "Self-link of private subnet under custom network"
}
/*
variable "external_ip" {
  description = "External Ip for the GCE"
  type = string
}

variable "publickeypath" {
  description = "Path to your ssh public key file"
  type        = string
}
*/
variable "user" {
  description = "Enter the user name of the remote machine"
  type        = string
}

