#==================root/output.tf=====================#

/*
output "Image_module_ouput" {
  value = module.Image
}

output "VPC_module_ouput" {
  value = module.VPC
}

output "External-ip" {
  value = module.External-Ip
}
*/
output "jump-server-external-ip" {
  value = module.Instance
}