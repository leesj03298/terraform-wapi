locals {
  app_vpc = {
    vpc = {
      tf_identifier = "api-p-app-01"
      name          = "ww-an2-vpc-api-p-app-01"
      cidr_block    = "10.3.0.0/24"
    }
    subnets = [
      {
        tf_identifier               = "api-p-app-tgw-2a"
        name                        = "ww-an2-sbn-api-p-app-tgw-2a"
        cidr_block                  = "10.3.0.0/28"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "api-p-app-tgw"
      },
      {
        tf_identifier               = "api-p-app-tgw-2c"
        name                        = "ww-an2-sbn-api-p-app-tgw-2c"
        cidr_block                  = "10.3.0.16/28"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "api-p-app-tgw"
      },
      {
        tf_identifier               = "api-p-app-lb-2a"
        name                        = "ww-an2-sbn-api-p-app-lb-2a"
        cidr_block                  = "10.3.0.32/27"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "api-p-app-lb"
      },
      {
        tf_identifier               = "api-p-app-lb-2c"
        name                        = "ww-an2-sbn-api-p-app-lb-2c"
        cidr_block                  = "10.3.0.64/27"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "api-p-app-lb"
      },
      {
        tf_identifier               = "api-p-app-ap-2a"
        name                        = "ww-an2-sbn-api-p-app-ap-2a"
        cidr_block                  = "10.3.0.96/27"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "api-p-app-ap"
      },
      {
        tf_identifier               = "api-p-app-ap-2c"
        name                        = "ww-an2-sbn-api-p-app-ap-2c"
        cidr_block                  = "10.3.0.128/27"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "api-p-app-ap"
      },
      {
        tf_identifier               = "api-p-app-db-2a"
        name                        = "ww-an2-sbn-api-p-app-db-2a"
        cidr_block                  = "10.3.0.160/27"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "api-p-app-db"
      },
      {
        tf_identifier               = "api-p-app-db-2c"
        name                        = "ww-an2-sbn-api-p-app-db-2c"
        cidr_block                  = "10.3.0.192/27"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "api-p-app-db"
      },
    ]
    route_tables = [
      {
        tf_identifier = "api-p-app-tgw"
        name          = "ww-an2-rtb-api-p-app-tgw"
      },
      {
        tf_identifier = "api-p-app-lb"
        name          = "ww-an2-rtb-api-p-app-lb"
      },
      {
        tf_identifier = "api-p-app-ap"
        name          = "ww-an2-rtb-api-p-app-ap"
      },
      {
        tf_identifier = "api-p-app-db"
        name          = "ww-an2-rtb-api-p-app-db"
      },
    ]
  }
}