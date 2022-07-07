#=================GCS/locals.tf===================#

locals {
  lifecycle_rule = {
    rules1 = {
      type                       = "Delete"
      days_since_noncurrent_time = 7
      age                        = 100
      num_newer_versions         = 2
    }
    rules2 = {
      type                       = "Delete"
      days_since_noncurrent_time = 100
      age                        = 5
      num_newer_versions         = 10
    }
  }
}