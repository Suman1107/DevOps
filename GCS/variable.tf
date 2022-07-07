#===================GCS/Variable.tf===================#

variable "location" {
  description = "Enter the Region in which bucket will be created"
  type        = string
  default     = "US-CENTRAL1"
}

variable "project_id" {
  description = "Enter the project name"
  type        = string
  default     = "hale-courage-351413"
}

variable "storage_class" {
  description = "Enter Storage class of the bucket. Supported values include: STANDARD, MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE"
  type        = string
  default     = "STANDARD"
}



