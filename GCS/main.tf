#=====================GCS/main.tf=======================#

resource "google_storage_bucket" "gcs" {
  name                        = "terraform-bucket-${var.project_id}"
  force_destroy               = true
  location                    = var.location
  project                     = var.project_id
  storage_class               = var.storage_class
  uniform_bucket_level_access = true
  
  versioning {
    enabled = true
  }
  
  dynamic "lifecycle_rule" {
    for_each = local.lifecycle_rule
    content{
    
      action {
        type = lifecycle_rule.value.type
      }
      condition {
        days_since_noncurrent_time = lifecycle_rule.value.days_since_noncurrent_time
        age = lifecycle_rule.value.age
        num_newer_versions = lifecycle_rule.value.num_newer_versions
      }
    }
  }
}
