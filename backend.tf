terraform {
  backend "gcs" {
    bucket = "devops_terraform_backend"
    prefix = "terraform"
    #    credentials = "/home/ec2-user/environment/Terraform-Devops/GCP/gcp-sa.json"
  }
}