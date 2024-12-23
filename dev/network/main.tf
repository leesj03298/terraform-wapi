module "dmz_vpc" {
  source       = "../../module/network/"
  vpc          = local.dmz_vpc.vpc
  subnets      = local.dmz_vpc.subnets
  route_tables = local.dmz_vpc.route_tables
}