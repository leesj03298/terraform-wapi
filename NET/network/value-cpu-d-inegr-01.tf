locals {
  cpu-d-inegr-01 = {
    vpc = {
      tf_identifier           = "cpu-d-inegr-01"
      name                    = "ww-an2-vpc-cpu-d-inegr-01"
      cidr_block              = "10.2.65.0/25"
      create_internet_gateway = true
      internet_gateway_name   = "ww-an2-igw-cpu-d-inegr-01"
    }
    subnets = [
      {
        tf_identifier               = "cpu-d-inegr-nat-a"
        name                        = "ww-an2-sbn-cpu-d-inegr-nat-a"
        cidr_block                  = "10.2.65.0/28"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "cpu-d-inegr-nat-a"
      },
      {
        tf_identifier               = "cpu-d-inegr-nat-c"
        name                        = "ww-an2-sbn-cpu-d-inegr-nat-c"
        cidr_block                  = "10.2.65.16/28"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "cpu-d-inegr-nat-c"
      },
      {
        tf_identifier               = "cpu-d-inegr-utm-a"
        name                        = "ww-an2-sbn-cpu-d-inegr-utm-a"
        cidr_block                  = "10.2.65.32/28"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "cpu-d-inegr-utm-a"
      },
      {
        tf_identifier               = "cpu-d-inegr-utm-c"
        name                        = "ww-an2-sbn-cpu-d-inegr-utm-c"
        cidr_block                  = "10.2.65.48/28"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "cpu-d-inegr-utm-c"
      },
      {
        tf_identifier               = "cpu-d-inegr-ctgw-a"
        name                        = "ww-an2-sbn-cpu-d-inegr-ctgw-a"
        cidr_block                  = "10.2.65.64/28"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "cpu-d-inegr-ctgw-a"
      },
      {
        tf_identifier               = "cpu-d-inegr-ctgw-c"
        name                        = "ww-an2-sbn-cpu-d-inegr-ctgw-c"
        cidr_block                  = "10.2.65.80/28"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "cpu-d-inegr-ctgw-c"
      },
       {
        tf_identifier               = "cpu-d-inegr-dtgw-a"
        name                        = "ww-an2-sbn-cpu-d-inegr-dtgw-a"
        cidr_block                  = "10.2.65.96/28"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "cpu-d-inegr-dtgw-a"
      },
      {
        tf_identifier               = "cpu-d-inegr-dtgw-c"
        name                        = "ww-an2-sbn-cpu-d-inegr-dtgw-c"
        cidr_block                  = "10.2.65.112/28"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "cpu-d-inegr-dtgw-c"
      },
    ]
    route_tables = [
      {
        tf_identifier = "cpu-d-inegr-nat-a"
        name          = "ww-an2-rtb-cpu-d-inegr-nat-a"
      },
      {
        tf_identifier = "cpu-d-inegr-nat-c"
        name          = "ww-an2-rtb-cpu-d-inegr-nat-c"
      },
      {
        tf_identifier = "cpu-d-inegr-utm-a"
        name          = "ww-an2-rtb-cpu-d-inegr-utm-a"
      },
      {
        tf_identifier = "cpu-d-inegr-utm-c"
        name          = "ww-an2-rtb-cpu-d-inegr-utm-c"
      },
      {
        tf_identifier = "cpu-d-inegr-ctgw-a"
        name          = "ww-an2-rtb-cpu-d-inegr-ctgw-a"
      },
      {
        tf_identifier = "cpu-d-inegr-ctgw-c"
        name          = "ww-an2-rtb-cpu-d-inegr-ctgw-c"
      },
      {
        tf_identifier = "cpu-d-inegr-dtgw-a"
        name          = "ww-an2-rtb-cpu-d-inegr-dtgw-a"
      },
      {
        tf_identifier = "cpu-d-inegr-dtgw-c"
        name          = "ww-an2-rtb-cpu-d-inegr-dtgw-c"
      },
    ]
  }
}