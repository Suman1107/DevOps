#========================Subnet/variables.tf==============================#

variable "private_subnet_name" {
  description = "Enter the name for the Private subnet to be created"
  type        = string
  default     = "private-subnet"
}

variable "private_subnet_cidr" {
  description = "Subnet range. eg: 10.0.0.0/24"
  type        = string
  default     = "10.0.1.0/24"
}

variable "public_subnet_name" {
  description = "Enter the name for the Public subnet to be created"
  type        = string
  default     = "public-subnet"
}

variable "public_subnet_cidr" {
  description = "CIDR range for the Public subnet. eg: 10.0.0.0/24"
  type        = string
  default     = "10.0.2.0/24"
}

variable "vpc_id" {
  description = "VPC id to be mentioned here. Derived from output of VPC module"
  type        = string
}

variable "region" {
  description = "Enter the Region of the Subnet"
  type        = string
  default     = "us-central1"
}

variable "project_id" {
  description = "Enter the project name"
  type        = string
  default     = "hale-courage-351413"
}