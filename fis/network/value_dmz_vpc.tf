locals {
  dmz_vpc = {
    vpc = {
      tf_identifier           = "fst-d-dmz-01"
      create_internet_gateway = true
      name                    = "ww-an2-vpc-fst-d-dmz-01"
      internet_gateway_name   = "ww-an2-igw-fst-d-dmz-01"
      cidr_block              = "10.4.0.0/25"
    }
    subnets = [
      {
        tf_identifier               = "fst-d-dmz-tgw-2a"
        name                        = "ww-an2-sbn-fst-d-dmz-tgw-2a"
        cidr_block                  = "10.4.0.0/28"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "fst-d-dmz-tgw"
      },
      {
        tf_identifier               = "fst-d-dmz-tgw-2c"
        name                        = "ww-an2-sbn-fst-d-dmz-tgw-2c"
        cidr_block                  = "10.4.0.16/28"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "fst-d-dmz-tgw"
      },
      {
        tf_identifier               = "fst-d-dmz-lb-2a"
        name                        = "ww-an2-sbn-fst-d-dmz-lb-2a"
        cidr_block                  = "10.4.0.32/27"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "fst-d-dmz-lb"
      },
      {
        tf_identifier               = "fst-d-dmz-lb-2c"
        name                        = "ww-an2-sbn-fst-d-dmz-lb-2c"
        cidr_block                  = "10.4.0.64/27"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "fst-d-dmz-lb"
      },
      {
        tf_identifier               = "fst-d-dmz-wb-2a"
        name                        = "ww-an2-sbn-fst-d-dmz-wb-2a"
        cidr_block                  = "10.4.0.96/28"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "fst-d-dmz-wb"
      },
      {
        tf_identifier               = "fst-d-dmz-wb-2c"
        name                        = "ww-an2-sbn-fst-d-dmz-wb-2c"
        cidr_block                  = "10.4.0.112/28"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "fst-d-dmz-wb"
      },
    ]
    route_tables = [
      {
        tf_identifier = "fst-d-dmz-tgw"
        name          = "ww-an2-rtb-fst-d-dmz-tgw"
      },
      {
        tf_identifier = "fst-d-dmz-lb"
        name          = "ww-an2-rtb-fst-d-dmz-lb"
      },
      {
        tf_identifier = "fst-d-dmz-wb"
        name          = "ww-an2-rtb-fst-d-dmz-wb"
      },
    ]
  }
}