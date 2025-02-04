module "dmz_vpc" {
  source = "../../module/ec2/"
  ec2    = local.dmz_ec2
}

# module "app_vpc" {
#   source       = "../../module/ec2/"
#   vpc          = local.app_vpc.vpc
#   subnets      = local.app_vpc.subnets
#   route_tables = local.app_vpc.route_tables
# }

output "name" {
  value = module.dmz_vpc.ec2
}