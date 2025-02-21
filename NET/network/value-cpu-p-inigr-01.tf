locals {
  cpu-p-inigr-01 = {
    vpc = {
      tf_identifier           = "cpu-p-inigr-01"
      name                    = "ww-an2-vpc-cpu-p-inigr-01"
      cidr_block              = "10.2.64.0/24"
      create_internet_gateway = true
      internet_gateway_name   = "ww-an2-igw-cpu-p-inigr-01"
    }
    subnets = [
      {
        tf_identifier               = "cpu-p-inigr-inlb-a"
        name                        = "ww-an2-sbn-cpu-p-inigr-inlb-a"
        cidr_block                  = "10.2.64.0/27"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "cpu-p-inigr-inlb-a"
      },
      {
        tf_identifier               = "cpu-p-inigr-inlb-c"
        name                        = "ww-an2-sbn-cpu-p-inigr-inlb-c"
        cidr_block                  = "10.2.64.32/27"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "cpu-p-inigr-inlb-c"
      },
      {
        tf_identifier               = "cpu-p-inigr-utm-a"
        name                        = "ww-an2-sbn-cpu-p-inigr-utm-a"
        cidr_block                  = "10.2.64.64/28"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "cpu-p-inigr-utm-a"
      },
      {
        tf_identifier               = "cpu-p-inigr-utm-c"
        name                        = "ww-an2-sbn-cpu-p-inigr-utm-c"
        cidr_block                  = "10.2.64.80/28"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "cpu-p-inigr-utm-c"
      },
      {
        tf_identifier               = "cpu-p-inigr-waf-a"
        name                        = "ww-an2-sbn-cpu-p-inigr-waf-a"
        cidr_block                  = "10.2.64.96/28"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "cpu-p-inigr-waf-a"
      },
      {
        tf_identifier               = "cpu-p-inigr-waf-c"
        name                        = "ww-an2-sbn-cpu-p-inigr-waf-c"
        cidr_block                  = "10.2.64.112/28"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "cpu-p-inigr-waf-c"
      },
      {
        tf_identifier               = "cpu-p-inigr-svlb-a"
        name                        = "ww-an2-sbn-cpu-p-inigr-svlb-a"
        cidr_block                  = "10.2.64.128/28"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "cpu-p-inigr-svlb-a"
      },
      {
        tf_identifier               = "cpu-p-inigr-svlb-c"
        name                        = "ww-an2-sbn-cpu-p-inigr-svlb-c"
        cidr_block                  = "10.2.64.144/28"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "cpu-p-inigr-svlb-c"
      },
      {
        tf_identifier               = "cpu-p-inigr-ctgw-a"
        name                        = "ww-an2-sbn-cpu-p-inigr-ctgw-a"
        cidr_block                  = "10.2.64.160/28"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "cpu-p-inigr-ctgw-a"
      },
      {
        tf_identifier               = "cpu-p-inigr-ctgw-c"
        name                        = "ww-an2-sbn-cpu-p-inigr-ctgw-c"
        cidr_block                  = "10.2.64.176/28"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "cpu-p-inigr-ctgw-c"
      },
            {
        tf_identifier               = "cpu-p-inigr-ptgw-a"
        name                        = "ww-an2-sbn-cpu-p-inigr-ptgw-a"
        cidr_block                  = "10.2.64.192/28"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "cpu-p-inigr-ptgw-a"
      },
      {
        tf_identifier               = "cpu-p-inigr-ptgw-c"
        name                        = "ww-an2-sbn-cpu-p-inigr-ptgw-c"
        cidr_block                  = "10.2.64.208/28"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "cpu-p-inigr-ptgw-c"
      },
   
    ]
    route_tables = [
      {
        tf_identifier = "cpu-p-inigr-inlb-a"
        name          = "ww-an2-rtb-cpu-p-inigr-inlb-a"
      },
      {
        tf_identifier = "cpu-p-inigr-inlb-c"
        name          = "ww-an2-rtb-cpu-p-inigr-inlb-c"
      },
      {
        tf_identifier = "cpu-p-inigr-utm-a"
        name          = "ww-an2-rtb-cpu-p-inigr-utm-a"
      },
      {
        tf_identifier = "cpu-p-inigr-utm-c"
        name          = "ww-an2-rtb-cpu-p-inigr-utm-c"
      },
            {
        tf_identifier = "cpu-p-inigr-waf-a"
        name          = "ww-an2-rtb-cpu-p-inigr-waf-a"
      },
      {
        tf_identifier = "cpu-p-inigr-waf-c"
        name          = "ww-an2-rtb-cpu-p-inigr-waf-c"
      },
      {
        tf_identifier = "cpu-p-inigr-svlb-a"
        name          = "ww-an2-rtb-cpu-p-inigr-svlb-a"
      },
      {
        tf_identifier = "cpu-p-inigr-svlb-c"
        name          = "ww-an2-rtb-cpu-p-inigr-svlb-c"
      },
      {
        tf_identifier = "cpu-p-inigr-ctgw-a"
        name          = "ww-an2-rtb-cpu-p-inigr-ctgw-a"
      },
      {
        tf_identifier = "cpu-p-inigr-ctgw-c"
        name          = "ww-an2-rtb-cpu-p-inigr-ctgw-c"
      },
            {
        tf_identifier = "cpu-p-inigr-ptgw-a"
        name          = "ww-an2-rtb-cpu-p-inigr-ptgw-a"
      },
      {
        tf_identifier = "cpu-p-inigr-ptgw-c"
        name          = "ww-an2-rtb-cpu-p-inigr-ptgw-c"
      },
    ]
  }
}