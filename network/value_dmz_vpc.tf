locals {
  app_vpc = {
    vpc = {
      name       = "ww-an2-vpc-api-d-dmz-01"
      cidr_block = "10.4.0.0/25"
    }
    subnets = [
      {
        name                    = "ww-an2-sbn-api-d-dmz-tgw-2a"
        cidr_block              = "10.4.0.0/28"
        availability_zone       = "ap-northeast-2a"
        association_route_table = "ww-an2-rtb-api-d-dmz-tgw"
      },
      {
        name                    = "ww-an2-sbn-api-d-dmz-tgw-2c"
        cidr_block              = "10.4.0.16/28"
        availability_zone       = "ap-northeast-2c"
        association_route_table = "ww-an2-rtb-api-d-dmz-tgw"
      },
      {
        name                    = "ww-an2-sbn-api-d-dmz-lb-2a"
        cidr_block              = "10.4.0.32/27"
        availability_zone       = "ap-northeast-2a"
        association_route_table = "ww-an2-rtb-api-d-dmz-lb"
      },
      {
        name                    = "ww-an2-sbn-api-d-dmz-lb-2c"
        cidr_block              = "10.4.0.64/27"
        availability_zone       = "ap-northeast-2c"
        association_route_table = "ww-an2-rtb-api-d-dmz-lb"
      },
      {
        name                    = "ww-an2-sbn-api-d-dmz-wb-2a"
        cidr_block              = "10.4.0.96/28"
        availability_zone       = "ap-northeast-2a"
        association_route_table = "ww-an2-rtb-api-d-dmz-wb"
      },
      {
        name                    = "ww-an2-sbn-api-d-dmz-wb-2c"
        cidr_block              = "10.4.0.112/28"
        availability_zone       = "ap-northeast-2c"
        association_route_table = "ww-an2-rtb-api-d-dmz-wb"
      },
    ]
    route_tables = [
      {
        name = "ww-an2-rtb-api-d-dmz-tgw"
      },
      {
        name = "ww-an2-rtb-api-d-dmz-lb"
      },
      {
        name = "ww-an2-rtb-api-d-dmz-wb"
      },
    ]
  }
}