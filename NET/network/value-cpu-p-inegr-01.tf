locals {
  cpu-p-inegr-01 = {
    vpc = {
      tf_identifier           = "cpu-p-inegr-01"
      name                    = "ww-an2-vpc-cpu-p-inegr-01"
      cidr_block              = "10.2.65.0/25"
      create_internet_gateway = true
      internet_gateway_name   = "ww-an2-igw-cpu-p-inegr-01"
    }
    subnets = [
      {
        tf_identifier               = "cpu-p-inegr-nat-a"
        name                        = "ww-an2-sbn-cpu-p-inegr-nat-a"
        cidr_block                  = "10.2.65.0/28"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "cpu-p-inegr-nat-a"
      },
      {
        tf_identifier               = "cpu-p-inegr-nat-c"
        name                        = "ww-an2-sbn-cpu-p-inegr-nat-c"
        cidr_block                  = "10.2.65.16/28"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "cpu-p-inegr-nat-c"
      },
      {
        tf_identifier               = "cpu-p-inegr-utm-a"
        name                        = "ww-an2-sbn-cpu-p-inegr-utm-a"
        cidr_block                  = "10.2.65.32/28"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "cpu-p-inegr-utm-a"
      },
      {
        tf_identifier               = "cpu-p-inegr-utm-c"
        name                        = "ww-an2-sbn-cpu-p-inegr-utm-c"
        cidr_block                  = "10.2.65.48/28"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "cpu-p-inegr-utm-c"
      },
      {
        tf_identifier               = "cpu-p-inegr-ctgw-a"
        name                        = "ww-an2-sbn-cpu-p-inegr-ctgw-a"
        cidr_block                  = "10.2.65.64/28"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "cpu-p-inegr-ctgw-a"
      },
      {
        tf_identifier               = "cpu-p-inegr-ctgw-c"
        name                        = "ww-an2-sbn-cpu-p-inegr-ctgw-c"
        cidr_block                  = "10.2.65.80/28"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "cpu-p-inegr-ctgw-c"
      },
       {
        tf_identifier               = "cpu-p-inegr-ptgw-a"
        name                        = "ww-an2-sbn-cpu-p-inegr-ptgw-a"
        cidr_block                  = "10.2.65.96/28"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "cpu-p-inegr-ptgw-a"
      },
      {
        tf_identifier               = "cpu-p-inegr-ptgw-c"
        name                        = "ww-an2-sbn-cpu-p-inegr-ptgw-c"
        cidr_block                  = "10.2.65.112/28"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "cpu-p-inegr-ptgw-c"
      },
    ]
    route_tables = [
      {
        tf_identifier = "cpu-p-inegr-nat-a"
        name          = "ww-an2-rtb-cpu-p-inegr-nat-a"
      },
      {
        tf_identifier = "cpu-p-inegr-nat-c"
        name          = "ww-an2-rtb-cpu-p-inegr-nat-c"
      },
      {
        tf_identifier = "cpu-p-inegr-utm-a"
        name          = "ww-an2-rtb-cpu-p-inegr-utm-a"
      },
      {
        tf_identifier = "cpu-p-inegr-utm-c"
        name          = "ww-an2-rtb-cpu-p-inegr-utm-c"
      },
      {
        tf_identifier = "cpu-p-inegr-ctgw-a"
        name          = "ww-an2-rtb-cpu-p-inegr-ctgw-a"
      },
      {
        tf_identifier = "cpu-p-inegr-ctgw-c"
        name          = "ww-an2-rtb-cpu-p-inegr-ctgw-c"
      },
      {
        tf_identifier = "cpu-p-inegr-ptgw-a"
        name          = "ww-an2-rtb-cpu-p-inegr-ptgw-a"
      },
      {
        tf_identifier = "cpu-p-inegr-ptgw-c"
        name          = "ww-an2-rtb-cpu-p-inegr-ptgw-c"
      },
    ]
  }
}