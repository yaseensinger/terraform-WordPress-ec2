module "networking" {    
    source = "./modules/networking"
}

module "ec2" {
    source = "./modules/ec2"
    subnet_id = module.networking.subnet_id
    security_group_id = module.networking.security_group_id
}
