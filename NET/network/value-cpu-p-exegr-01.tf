locals {
  cpu-p-exegr-01 = {
    vpc = {
      tf_identifier           = "cpu-p-exegr-01"
      name                    = "ww-an2-vpc-cpu-p-exegr-01"
      cidr_block              = "10.2.1.0/25"
      create_internet_gateway = true
      internet_gateway_name   = "ww-an2-igw-cpu-p-exegr-01"
    }
    subnets = [
      {
        tf_identifier               = "cpu-p-exegr-nat-a"
        name                        = "ww-an2-sbn-cpu-p-exegr-nat-a"
        cidr_block                  = "10.2.1.0/28"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "cpu-p-exegr-nat-a"
      },
      {
        tf_identifier               = "cpu-p-exegr-nat-c"
        name                        = "ww-an2-sbn-cpu-p-exegr-nat-c"
        cidr_block                  = "10.2.1.16/28"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "cpu-p-exegr-nat-c"
      },
      {
        tf_identifier               = "cpu-p-exegr-utm-a"
        name                        = "ww-an2-sbn-cpu-p-exegr-utm-a"
        cidr_block                  = "10.2.1.32/28"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "cpu-p-exegr-utm-a"
      },
      {
        tf_identifier               = "cpu-p-exegr-utm-c"
        name                        = "ww-an2-sbn-cpu-p-exegr-utm-c"
        cidr_block                  = "10.2.1.48/28"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "cpu-p-exegr-utm-c"
      },
      {
        tf_identifier               = "cpu-p-exegr-tgw-a"
        name                        = "ww-an2-sbn-cpu-p-exegr-tgw-a"
        cidr_block                  = "10.2.1.64/28"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "cpu-p-exegr-tgw-a"
      },
      {
        tf_identifier               = "cpu-p-exegr-tgw-c"
        name                        = "ww-an2-sbn-cpu-p-exegr-tgw-c"
        cidr_block                  = "10.2.1.80/28"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "cpu-p-exegr-tgw-c"
      },
    ]
    route_tables = [
      {
        tf_identifier = "cpu-p-exegr-nat-a"
        name          = "ww-an2-rtb-cpu-p-exegr-nat-a"
      },
      {
        tf_identifier = "cpu-p-exegr-nat-c"
        name          = "ww-an2-rtb-cpu-p-exegr-nat-c"
      },
      {
        tf_identifier = "cpu-p-exegr-utm-a"
        name          = "ww-an2-rtb-cpu-p-exegr-utm-a"
      },
      {
        tf_identifier = "cpu-p-exegr-utm-c"
        name          = "ww-an2-rtb-cpu-p-exegr-utm-c"
      },
      {
        tf_identifier = "cpu-p-exegr-tgw-a"
        name          = "ww-an2-rtb-cpu-p-exegr-tgw-a"
      },
      {
        tf_identifier = "cpu-p-exegr-tgw-c"
        name          = "ww-an2-rtb-cpu-p-exegr-tgw-c"
      },
    ]
  }
}