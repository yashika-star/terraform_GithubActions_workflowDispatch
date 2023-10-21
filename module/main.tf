module "Ec2_module" {
    source = "../ec2_module"
     ami = var.ami[var.region]
    region = var.region
}