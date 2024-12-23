locals {
  dmz_vpc = {
    vpc = {
      tf_identifier = "api-d-app-01"
      name          = "ww-an2-vpc-api-d-app-01"
      cidr_block    = "10.4.0.128/25"
    }
    subnets = [
      {
        tf_identifier               = "api-d-app-tgw-2a"
        name                        = "ww-an2-sbn-api-d-app-tgw-2a"
        cidr_block                  = "10.4.0.128/28"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "api-d-app-tgw"
      },
      {
        tf_identifier               = "api-d-app-tgw-2c"
        name                        = "ww-an2-sbn-api-d-app-tgw-2c"
        cidr_block                  = "10.4.0.144/28"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "api-d-app-tgw"
      },
      {
        tf_identifier               = "api-d-app-lb-2a"
        name                        = "ww-an2-sbn-api-d-app-lb-2a"
        cidr_block                  = "10.4.0.160/27"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "api-d-app-lb"
      },
      {
        tf_identifier               = "api-d-app-lb-2c"
        name                        = "ww-an2-sbn-api-d-app-lb-2c"
        cidr_block                  = "10.4.0.176/27"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "api-d-app-lb"
      },
      {
        tf_identifier               = "api-d-app-ap-2a"
        name                        = "ww-an2-sbn-api-d-app-ap-2a"
        cidr_block                  = "10.4.0.192/28"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "api-d-app-ap"
      },
      {
        tf_identifier               = "api-d-app-ap-2c"
        name                        = "ww-an2-sbn-api-d-app-ap-2c"
        cidr_block                  = "10.4.0.208/28"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "api-d-app-ap"
      },
      {
        tf_identifier               = "api-d-app-db-2a"
        name                        = "ww-an2-sbn-api-d-app-db-2a"
        cidr_block                  = "10.4.0.224/28"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "api-d-app-db"
      },
      {
        tf_identifier               = "api-d-app-db-2c"
        name                        = "ww-an2-sbn-api-d-app-db-2c"
        cidr_block                  = "10.4.0.240/28"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "api-d-app-db"
      },
    ]
    route_tables = [
      {
        tf_identifier = "api-d-app-tgw"
        name          = "ww-an2-rtb-api-d-app-tgw"
      },
      {
        tf_identifier = "api-d-app-lb"
        name          = "ww-an2-rtb-api-d-app-lb"
      },
      {
        tf_identifier = "api-d-app-ap"
        name          = "ww-an2-rtb-api-d-app-ap"
      },
      {
        tf_identifier = "api-d-app-db"
        name          = "ww-an2-rtb-api-d-app-db"
      },
    ]
  }
}