locals {
  cpu-d-exigr-01 = {
    vpc = {
      tf_identifier           = "cpu-d-exigr-01"
      name                    = "ww-an2-vpc-cpu-d-exigr-01"
      cidr_block              = "10.2.32.0/24"
      create_internet_gateway = true
      internet_gateway_name   = "ww-an2-igw-cpu-d-exigr-01"
    }
    subnets = [
      {
        tf_identifier               = "cpu-d-exigr-exlb-a"
        name                        = "ww-an2-sbn-cpu-d-exigr-exlb-a"
        cidr_block                  = "10.2.32.0/27"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "cpu-d-exigr-exlb-a"
      },
      {
        tf_identifier               = "cpu-d-exigr-exlb-c"
        name                        = "ww-an2-sbn-cpu-d-exigr-exlb-c"
        cidr_block                  = "10.2.32.32/27"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "cpu-d-exigr-exlb-c"
      },
      {
        tf_identifier               = "cpu-d-exigr-inlb-a"
        name                        = "ww-an2-sbn-cpu-d-exigr-inlb-a"
        cidr_block                  = "10.2.32.64/27"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "cpu-d-exigr-inlb-a"
      },
      {
        tf_identifier               = "cpu-d-exigr-inlb-c"
        name                        = "ww-an2-sbn-cpu-d-exigr-inlb-c"
        cidr_block                  = "10.2.32.96/27"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "cpu-d-exigr-inlb-c"
      },
      {
        tf_identifier               = "cpu-d-exigr-utm-a"
        name                        = "ww-an2-sbn-cpu-d-exigr-utm-a"
        cidr_block                  = "10.2.32.128/28"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "cpu-d-exigr-utm-a"
      },
      {
        tf_identifier               = "cpu-d-exigr-utm-c"
        name                        = "ww-an2-sbn-cpu-d-exigr-utm-c"
        cidr_block                  = "10.2.32.144/28"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "cpu-d-exigr-utm-c"
      },
      {
        tf_identifier               = "cpu-d-exigr-waf-a"
        name                        = "ww-an2-sbn-cpu-d-exigr-waf-a"
        cidr_block                  = "10.2.32.160/28"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "cpu-d-exigr-waf-a"
      },
      {
        tf_identifier               = "cpu-d-exigr-waf-c"
        name                        = "ww-an2-sbn-cpu-d-exigr-waf-c"
        cidr_block                  = "10.2.32.176/28"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "cpu-d-exigr-waf-c"
      },
      {
        tf_identifier               = "cpu-d-exigr-svlb-a"
        name                        = "ww-an2-sbn-cpu-d-exigr-svlb-a"
        cidr_block                  = "10.2.32.192/28"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "cpu-d-exigr-svlb-a"
      },
      {
        tf_identifier               = "cpu-d-exigr-svlb-c"
        name                        = "ww-an2-sbn-cpu-d-exigr-svlb-c"
        cidr_block                  = "10.2.32.208/28"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "cpu-d-exigr-svlb-c"
      },
      {
        tf_identifier               = "cpu-d-exigr-tgw-a"
        name                        = "ww-an2-sbn-cpu-d-exigr-tgw-a"
        cidr_block                  = "10.2.32.224/28"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "cpu-d-exigr-tgw-a"
      },
      {
        tf_identifier               = "cpu-d-exigr-tgw-c"
        name                        = "ww-an2-sbn-cpu-d-exigr-tgw-c"
        cidr_block                  = "10.2.32.240/28"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "cpu-d-exigr-tgw-c"
      },

    ]
    route_tables = [
      {
        tf_identifier = "cpu-d-exigr-exlb-a"
        name          = "ww-an2-rtb-cpu-d-exigr-exlb-a"
      },
      {
        tf_identifier = "cpu-d-exigr-exlb-c"
        name          = "ww-an2-rtb-cpu-d-exigr-exlb-c"
      },
      {
        tf_identifier = "cpu-d-exigr-inlb-a"
        name          = "ww-an2-rtb-cpu-d-exigr-inlb-a"
      },
      {
        tf_identifier = "cpu-d-exigr-inlb-c"
        name          = "ww-an2-rtb-cpu-d-exigr-inlb-c"
      },
      {
        tf_identifier = "cpu-d-exigr-utm-a"
        name          = "ww-an2-rtb-cpu-d-exigr-utm-a"
      },
      {
        tf_identifier = "cpu-d-exigr-utm-c"
        name          = "ww-an2-rtb-cpu-d-exigr-utm-c"
      },
      {
        tf_identifier = "cpu-d-exigr-waf-a"
        name          = "ww-an2-rtb-cpu-d-exigr-waf-a"
      },
      {
        tf_identifier = "cpu-d-exigr-waf-c"
        name          = "ww-an2-rtb-cpu-d-exigr-waf-c"
      },
      {
        tf_identifier = "cpu-d-exigr-svlb-a"
        name          = "ww-an2-rtb-cpu-d-exigr-svlb-a"
      },
      {
        tf_identifier = "cpu-d-exigr-svlb-c"
        name          = "ww-an2-rtb-cpu-d-exigr-svlb-c"
      },
      {
        tf_identifier = "cpu-d-exigr-tgw-a"
        name          = "ww-an2-rtb-cpu-d-exigr-tgw-a"
      },
      {
        tf_identifier = "cpu-d-exigr-tgw-c"
        name          = "ww-an2-rtb-cpu-d-exigr-tgw-c"
      },
    ]
  }
}