locals {
  cpu-d-exegr-01 = {
    vpc = {
      tf_identifier           = "cpu-d-exegr-01"
      name                    = "ww-an2-vpc-cpu-d-exegr-01"
      cidr_block              = "10.2.33.0/25"
      create_internet_gateway = true
      internet_gateway_name   = "ww-an2-igw-cpu-d-exegr-01"
    }
    subnets = [
      {
        tf_identifier               = "cpu-d-exegr-nat-a"
        name                        = "ww-an2-sbn-cpu-d-exegr-nat-a"
        cidr_block                  = "10.2.33.0/28"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "cpu-d-exegr-nat-a"
      },
      {
        tf_identifier               = "cpu-d-exegr-nat-c"
        name                        = "ww-an2-sbn-cpu-d-exegr-nat-c"
        cidr_block                  = "10.2.33.16/28"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "cpu-d-exegr-nat-c"
      },
      {
        tf_identifier               = "cpu-d-exegr-utm-a"
        name                        = "ww-an2-sbn-cpu-d-exegr-utm-a"
        cidr_block                  = "10.2.33.32/28"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "cpu-d-exegr-utm-a"
      },
      {
        tf_identifier               = "cpu-d-exegr-utm-c"
        name                        = "ww-an2-sbn-cpu-d-exegr-utm-c"
        cidr_block                  = "10.2.33.48/28"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "cpu-d-exegr-utm-c"
      },
      {
        tf_identifier               = "cpu-d-exegr-tgw-a"
        name                        = "ww-an2-sbn-cpu-d-exegr-tgw-a"
        cidr_block                  = "10.2.33.64/28"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "cpu-d-exegr-tgw-a"
      },
      {
        tf_identifier               = "cpu-d-exegr-tgw-c"
        name                        = "ww-an2-sbn-cpu-d-exegr-tgw-c"
        cidr_block                  = "10.2.33.80/28"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "cpu-d-exegr-tgw-c"
      },
    ]
    route_tables = [
      {
        tf_identifier = "cpu-d-exegr-nat-a"
        name          = "ww-an2-rtb-cpu-d-exegr-nat-a"
      },
      {
        tf_identifier = "cpu-d-exegr-nat-c"
        name          = "ww-an2-rtb-cpu-d-exegr-nat-c"
      },
      {
        tf_identifier = "cpu-d-exegr-utm-a"
        name          = "ww-an2-rtb-cpu-d-exegr-utm-a"
      },
      {
        tf_identifier = "cpu-d-exegr-utm-c"
        name          = "ww-an2-rtb-cpu-d-exegr-utm-c"
      },
      {
        tf_identifier = "cpu-d-exegr-tgw-a"
        name          = "ww-an2-rtb-cpu-d-exegr-tgw-a"
      },
      {
        tf_identifier = "cpu-d-exegr-tgw-c"
        name          = "ww-an2-rtb-cpu-d-exegr-tgw-c"
      },
    ]
  }
}