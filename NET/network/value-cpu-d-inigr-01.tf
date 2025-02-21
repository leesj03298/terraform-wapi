locals {
  cpu-d-inigr-01 = {
    vpc = {
      tf_identifier           = "cpu-d-inigr-01"
      name                    = "ww-an2-vpc-cpu-d-inigr-01"
      cidr_block              = "10.2.96.0/24"
      create_internet_gateway = true
      internet_gateway_name   = "ww-an2-igw-cpu-d-inigr-01"
    }
    subnets = [
      {
        tf_identifier               = "cpu-d-inigr-inlb-a"
        name                        = "ww-an2-sbn-cpu-d-inigr-inlb-a"
        cidr_block                  = "10.2.96.0/27"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "cpu-d-inigr-inlb-a"
      },
      {
        tf_identifier               = "cpu-d-inigr-inlb-c"
        name                        = "ww-an2-sbn-cpu-d-inigr-inlb-c"
        cidr_block                  = "10.2.96.32/27"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "cpu-d-inigr-inlb-c"
      },
      {
        tf_identifier               = "cpu-d-inigr-utm-a"
        name                        = "ww-an2-sbn-cpu-d-inigr-utm-a"
        cidr_block                  = "10.2.96.64/28"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "cpu-d-inigr-utm-a"
      },
      {
        tf_identifier               = "cpu-d-inigr-utm-c"
        name                        = "ww-an2-sbn-cpu-d-inigr-utm-c"
        cidr_block                  = "10.2.96.80/28"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "cpu-d-inigr-utm-c"
      },
      {
        tf_identifier               = "cpu-d-inigr-waf-a"
        name                        = "ww-an2-sbn-cpu-d-inigr-waf-a"
        cidr_block                  = "10.2.96.96/28"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "cpu-d-inigr-waf-a"
      },
      {
        tf_identifier               = "cpu-d-inigr-waf-c"
        name                        = "ww-an2-sbn-cpu-d-inigr-waf-c"
        cidr_block                  = "10.2.96.112/28"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "cpu-d-inigr-waf-c"
      },
      {
        tf_identifier               = "cpu-d-inigr-svlb-a"
        name                        = "ww-an2-sbn-cpu-d-inigr-svlb-a"
        cidr_block                  = "10.2.96.128/28"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "cpu-d-inigr-svlb-a"
      },
      {
        tf_identifier               = "cpu-d-inigr-svlb-c"
        name                        = "ww-an2-sbn-cpu-d-inigr-svlb-c"
        cidr_block                  = "10.2.96.144/28"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "cpu-d-inigr-svlb-c"
      },
      {
        tf_identifier               = "cpu-d-inigr-ctgw-a"
        name                        = "ww-an2-sbn-cpu-d-inigr-ctgw-a"
        cidr_block                  = "10.2.96.160/28"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "cpu-d-inigr-ctgw-a"
      },
      {
        tf_identifier               = "cpu-d-inigr-ctgw-c"
        name                        = "ww-an2-sbn-cpu-d-inigr-ctgw-c"
        cidr_block                  = "10.2.96.176/28"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "cpu-d-inigr-ctgw-c"
      },
            {
        tf_identifier               = "cpu-d-inigr-dtgw-a"
        name                        = "ww-an2-sbn-cpu-d-inigr-dtgw-a"
        cidr_block                  = "10.2.96.192/28"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "cpu-d-inigr-dtgw-a"
      },
      {
        tf_identifier               = "cpu-d-inigr-dtgw-c"
        name                        = "ww-an2-sbn-cpu-d-inigr-dtgw-c"
        cidr_block                  = "10.2.96.208/28"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "cpu-d-inigr-dtgw-c"
      },
   
    ]
    route_tables = [
      {
        tf_identifier = "cpu-d-inigr-inlb-a"
        name          = "ww-an2-rtb-cpu-d-inigr-inlb-a"
      },
      {
        tf_identifier = "cpu-d-inigr-inlb-c"
        name          = "ww-an2-rtb-cpu-d-inigr-inlb-c"
      },
      {
        tf_identifier = "cpu-d-inigr-utm-a"
        name          = "ww-an2-rtb-cpu-d-inigr-utm-a"
      },
      {
        tf_identifier = "cpu-d-inigr-utm-c"
        name          = "ww-an2-rtb-cpu-d-inigr-utm-c"
      },
      {
        tf_identifier = "cpu-d-inigr-waf-a"
        name          = "ww-an2-rtb-cpu-d-inigr-waf-a"
      },
      {
        tf_identifier = "cpu-d-inigr-waf-c"
        name          = "ww-an2-rtb-cpu-d-inigr-waf-c"
      },
      {
        tf_identifier = "cpu-d-inigr-svlb-a"
        name          = "ww-an2-rtb-cpu-d-inigr-svlb-a"
      },
      {
        tf_identifier = "cpu-d-inigr-svlb-c"
        name          = "ww-an2-rtb-cpu-d-inigr-svlb-c"
      },
      {
        tf_identifier = "cpu-d-inigr-ctgw-a"
        name          = "ww-an2-rtb-cpu-d-inigr-ctgw-a"
      },
      {
        tf_identifier = "cpu-d-inigr-ctgw-c"
        name          = "ww-an2-rtb-cpu-d-inigr-ctgw-c"
      },
            {
        tf_identifier = "cpu-d-inigr-dtgw-a"
        name          = "ww-an2-rtb-cpu-d-inigr-dtgw-a"
      },
      {
        tf_identifier = "cpu-d-inigr-dtgw-c"
        name          = "ww-an2-rtb-cpu-d-inigr-dtgw-c"
      },
    ]
  }
}