module "networking" {
    source = "./modules/net"
}
module "ec2" {
    source = "./modules/ec2"
    subnet_id = module.networking.subnet_id
}
