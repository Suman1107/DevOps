#=================root/main.tf========================#
module "VPC" {
  source       = "./VPC"
  project_name = var.project_id
  vpc_name     = "devops-vpc"
}

module "Subnet" {
  source              = "./Subnet"
  private_subnet_name = "private-subnet"
  private_subnet_cidr = "10.0.1.0/24"
  public_subnet_name  = "public-subnet"
  public_subnet_cidr  = "10.0.2.0/24"
  vpc_id              = module.VPC.vpc-id
  region              = "us-central1"
  project_id          = var.project_id
}

module "Image" {
  source     = "./Image"
  project_id = var.project_id
  zone       = "us-central1-a"
  disk_size  = 10
}

module "Firewall" {
  source               = "./Firewall"
  project_id           = var.project_id
  vpc_id               = module.VPC.vpc-id
  priority             = 1000
  firewall_rules_local = local.firewall_rules.rules
}

module "Route" {
  source           = "./Route"
  vpc_id           = module.VPC.vpc-id
  project_id       = var.project_id
  route_local_file = local.routes.routes
}

module "Instance" {
  source                  = "./Instance"
  project_id              = var.project_id
  machine_type            = "e2-medium"
  zone                    = "us-central1-a"
  instance_size           = 100
  image_self_link         = module.Image.image_self_link
  vpc_self_link           = module.VPC.vpc_self_link
  public_subnet_self_link = module.Subnet.public_subnet_self_link
#  external_ip = module.External-Ip.external_ip
  user = "ubuntu"
  publickeypath = "/home/ec2-user/.ssh/id_rsa.pub"
}

module "External-Ip" {
  source           = "./External-Ip"
  public_subnet_id = module.Subnet.public_subnet_id
  project_id          = var.project_id
  region           = "us-central1"
}