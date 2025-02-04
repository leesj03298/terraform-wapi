locals {
  dmz_vpc = {
    vpc = {
      tf_identifier = "api-p-dmz-01"
      name          = "ww-an2-vpc-api-p-dmz-01"
      cidr_block    = "10.3.1.0/25"
    }
    subnets = [
      {
        tf_identifier               = "api-p-dmz-tgw-2a"
        name                        = "ww-an2-sbn-api-p-dmz-tgw-2a"
        cidr_block                  = "10.3.1.0/28"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "api-p-dmz-tgw"
      },
      {
        tf_identifier               = "api-p-dmz-tgw-2c"
        name                        = "ww-an2-sbn-api-p-dmz-tgw-2c"
        cidr_block                  = "10.3.1.16/28"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "api-p-dmz-tgw"
      },
      {
        tf_identifier               = "api-p-dmz-lb-2a"
        name                        = "ww-an2-sbn-api-p-dmz-lb-2a"
        cidr_block                  = "10.3.1.32/27"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "api-p-dmz-lb"
      },
      {
        tf_identifier               = "api-p-dmz-lb-2c"
        name                        = "ww-an2-sbn-api-p-dmz-lb-2c"
        cidr_block                  = "10.3.1.64/27"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "api-p-dmz-lb"
      },
      {
        tf_identifier               = "api-p-dmz-ap-2a"
        name                        = "ww-an2-sbn-api-p-dmz-ap-2a"
        cidr_block                  = "10.3.1.96/28"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "api-p-dmz-wb"
      },
      {
        tf_identifier               = "api-p-dmz-ap-2c"
        name                        = "ww-an2-sbn-api-p-dmz-ap-2c"
        cidr_block                  = "10.3.1.112/28"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "api-p-dmz-wb"
      },
    ]
    route_tables = [
      {
        tf_identifier = "api-p-dmz-tgw"
        name          = "ww-an2-rtb-api-p-dmz-tgw"
      },
      {
        tf_identifier = "api-p-dmz-lb"
        name          = "ww-an2-rtb-api-p-dmz-lb"
      },
      {
        tf_identifier = "api-p-dmz-ap"
        name          = "ww-an2-rtb-api-p-dmz-ap"
      },
    ]
  }
}