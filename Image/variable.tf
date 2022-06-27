variable "project_id" {
  type        = string
  description = "Project id"
  default     = "hale-courage-351413"
}

variable "zone" {
  type        = string
  description = "Zone in which image to be built"
  default     = "us-central1-a"
}

variable "disk_size" {
  type        = number
  description = "Disk size"
  default     = 10
}