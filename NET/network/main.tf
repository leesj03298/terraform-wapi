module "cpu-p-exigr-01" {
  source       = "../../module/network/"
  vpc          = local.cpu-p-exigr-01.vpc
  subnets      = local.cpu-p-exigr-01.subnets
  route_tables = local.cpu-p-exigr-01.route_tables
}

module "cpu-p-exegr-01" {
  source       = "../../module/network/"
  vpc          = local.cpu-p-exegr-01.vpc
  subnets      = local.cpu-p-exegr-01.subnets
  route_tables = local.cpu-p-exegr-01.route_tables
}

module "cpu-d-exigr-01" {
  source       = "../../module/network/"
  vpc          = local.cpu-d-exigr-01.vpc
  subnets      = local.cpu-d-exigr-01.subnets
  route_tables = local.cpu-d-exigr-01.route_tables
}

module "cpu-d-exegr-01" {
  source       = "../../module/network/"
  vpc          = local.cpu-d-exegr-01.vpc
  subnets      = local.cpu-d-exegr-01.subnets
  route_tables = local.cpu-d-exegr-01.route_tables
}

module "cpu-p-inigr-01" {
  source       = "../../module/network/"
  vpc          = local.cpu-p-inigr-01.vpc
  subnets      = local.cpu-p-inigr-01.subnets
  route_tables = local.cpu-p-inigr-01.route_tables
}

module "cpu-p-inegr-01" {
  source       = "../../module/network/"
  vpc          = local.cpu-p-inegr-01.vpc
  subnets      = local.cpu-p-inegr-01.subnets
  route_tables = local.cpu-p-inegr-01.route_tables
}

module "cpu-d-inigr-01" {
  source       = "../../module/network/"
  vpc          = local.cpu-d-inigr-01.vpc
  subnets      = local.cpu-d-inigr-01.subnets
  route_tables = local.cpu-d-inigr-01.route_tables
}

module "cpu-d-inegr-01" {
  source       = "../../module/network/"
  vpc          = local.cpu-d-inegr-01.vpc
  subnets      = local.cpu-d-inegr-01.subnets
  route_tables = local.cpu-d-inegr-01.route_tables
}


