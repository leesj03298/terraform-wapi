locals {
  dmz_vpc = {
    vpc = {
      name       = "ww-an2-vpc-api-d-app-01"
      cidr_block = "10.4.0.128/25"
    }
    subnets = [
      {
        name                    = "ww-an2-sbn-api-d-app-tgw-2a"
        cidr_block              = "10.4.0.128/28"
        availability_zone       = "ap-northeast-2a"
        association_route_table = "ww-an2-rtb-api-d-app-tgw"
      },
      {
        name                    = "ww-an2-sbn-api-d-app-tgw-2c"
        cidr_block              = "10.4.0.144/28"
        availability_zone       = "ap-northeast-2c"
        association_route_table = "ww-an2-rtb-api-d-app-tgw"
      },
      {
        name                    = "ww-an2-sbn-api-d-app-lb-2a"
        cidr_block              = "10.4.0.160/27"
        availability_zone       = "ap-northeast-2a"
        association_route_table = "ww-an2-rtb-api-d-app-lb"
      },
      {
        name                    = "ww-an2-sbn-api-d-app-lb-2c"
        cidr_block              = "10.4.0.176/27"
        availability_zone       = "ap-northeast-2c"
        association_route_table = "ww-an2-rtb-api-d-app-lb"
      },
      {
        name                    = "ww-an2-sbn-api-d-app-ap-2a"
        cidr_block              = "10.4.0.192/28"
        availability_zone       = "ap-northeast-2a"
        association_route_table = "ww-an2-rtb-api-d-app-ap"
      },
      {
        name                    = "ww-an2-sbn-api-d-app-ap-2c"
        cidr_block              = "10.4.0.208/28"
        availability_zone       = "ap-northeast-2c"
        association_route_table = "ww-an2-rtb-api-d-app-ap"
      },
      {
        name                    = "ww-an2-sbn-api-d-app-db-2a"
        cidr_block              = "10.4.0.224/28"
        availability_zone       = "ap-northeast-2a"
        association_route_table = "ww-an2-rtb-api-d-app-db"
      },
      {
        name                    = "ww-an2-sbn-api-d-app-db-2c"
        cidr_block              = "10.4.0.240/28"
        availability_zone       = "ap-northeast-2c"
        association_route_table = "ww-an2-rtb-api-d-app-db"
      },
    ]
    route_tables = [
      {
        name = "ww-an2-rtb-api-d-app-tgw"
      },
      {
        name = "ww-an2-rtb-api-d-app-lb"
      },
      {
        name = "ww-an2-rtb-api-d-app-ap"
      },
      {
        name = "ww-an2-rtb-api-d-app-db"
      },
    ]
  }
}