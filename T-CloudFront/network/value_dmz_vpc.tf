locals {
  dmz_vpc = {
    vpc = {
      tf_identifier           = "lsj-d-dmz-01"
      name                    = "ww-an2-vpc-lsj-d-dmz-01"
      cidr_block              = "10.4.0.0/25"
      create_internet_gateway = true
      internet_gateway_name   = "ww-an2-igw-lsj-d-dmz-01"
    }
    subnets = [
      {
        tf_identifier               = "lsj-d-dmz-tgw-2a"
        name                        = "ww-an2-sbn-lsj-d-dmz-tgw-2a"
        cidr_block                  = "10.4.0.0/28"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "lsj-d-dmz-tgw"
      },
      {
        tf_identifier               = "lsj-d-dmz-tgw-2c"
        name                        = "ww-an2-sbn-lsj-d-dmz-tgw-2c"
        cidr_block                  = "10.4.0.16/28"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "lsj-d-dmz-tgw"
      },
      {
        tf_identifier               = "lsj-d-dmz-lb-2a"
        name                        = "ww-an2-sbn-lsj-d-dmz-lb-2a"
        cidr_block                  = "10.4.0.32/27"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "lsj-d-dmz-lb"
      },
      {
        tf_identifier               = "lsj-d-dmz-lb-2c"
        name                        = "ww-an2-sbn-lsj-d-dmz-lb-2c"
        cidr_block                  = "10.4.0.64/27"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "lsj-d-dmz-lb"
      },
      {
        tf_identifier               = "lsj-d-dmz-wb-2a"
        name                        = "ww-an2-sbn-lsj-d-dmz-wb-2a"
        cidr_block                  = "10.4.0.96/28"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "lsj-d-dmz-wb"
      },
      {
        tf_identifier               = "lsj-d-dmz-wb-2c"
        name                        = "ww-an2-sbn-lsj-d-dmz-wb-2c"
        cidr_block                  = "10.4.0.112/28"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "lsj-d-dmz-wb"
      },
    ]
    route_tables = [
      {
        tf_identifier = "lsj-d-dmz-tgw"
        name          = "ww-an2-rtb-lsj-d-dmz-tgw"
      },
      {
        tf_identifier = "lsj-d-dmz-lb"
        name          = "ww-an2-rtb-lsj-d-dmz-lb"
      },
      {
        tf_identifier = "lsj-d-dmz-wb"
        name          = "ww-an2-rtb-lsj-d-dmz-wb"
      },
    ]
  }
}