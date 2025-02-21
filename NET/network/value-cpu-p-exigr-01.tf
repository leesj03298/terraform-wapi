locals {
  cpu-p-exigr-01 = {
    vpc = {
      tf_identifier           = "cpu-p-exigr-01"
      name                    = "ww-an2-vpc-cpu-p-exigr-01"
      cidr_block              = "10.2.0.0/24"
      create_internet_gateway = true
      internet_gateway_name   = "ww-an2-igw-cpu-p-exigr-01"
    }
    subnets = [
      {
        tf_identifier               = "cpu-p-exigr-exlb-a"
        name                        = "ww-an2-sbn-cpu-p-exigr-exlb-a"
        cidr_block                  = "10.2.0.0/27"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "cpu-p-exigr-exlb-a"
      },
      {
        tf_identifier               = "cpu-p-exigr-exlb-c"
        name                        = "ww-an2-sbn-cpu-p-exigr-exlb-c"
        cidr_block                  = "10.2.0.32/27"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "cpu-p-exigr-exlb-c"
      },
      {
        tf_identifier               = "cpu-p-exigr-inlb-a"
        name                        = "ww-an2-sbn-cpu-p-exigr-inlb-a"
        cidr_block                  = "10.2.0.64/27"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "cpu-p-exigr-inlb-a"
      },
      {
        tf_identifier               = "cpu-p-exigr-inlb-c"
        name                        = "ww-an2-sbn-cpu-p-exigr-inlb-c"
        cidr_block                  = "10.2.0.96/27"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "cpu-p-exigr-inlb-c"
      },
      {
        tf_identifier               = "cpu-p-exigr-utm-a"
        name                        = "ww-an2-sbn-cpu-p-exigr-utm-a"
        cidr_block                  = "10.2.0.128/28"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "cpu-p-exigr-utm-a"
      },
      {
        tf_identifier               = "cpu-p-exigr-utm-c"
        name                        = "ww-an2-sbn-cpu-p-exigr-utm-c"
        cidr_block                  = "10.2.0.144/28"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "cpu-p-exigr-utm-c"
      },
      {
        tf_identifier               = "cpu-p-exigr-waf-a"
        name                        = "ww-an2-sbn-cpu-p-exigr-waf-a"
        cidr_block                  = "10.2.0.160/28"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "cpu-p-exigr-waf-a"
      },
      {
        tf_identifier               = "cpu-p-exigr-waf-c"
        name                        = "ww-an2-sbn-cpu-p-exigr-waf-c"
        cidr_block                  = "10.2.0.176/28"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "cpu-p-exigr-waf-c"
      },
      {
        tf_identifier               = "cpu-p-exigr-svlb-a"
        name                        = "ww-an2-sbn-cpu-p-exigr-svlb-a"
        cidr_block                  = "10.2.0.192/28"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "cpu-p-exigr-svlb-a"
      },
      {
        tf_identifier               = "cpu-p-exigr-svlb-c"
        name                        = "ww-an2-sbn-cpu-p-exigr-svlb-c"
        cidr_block                  = "10.2.0.208/28"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "cpu-p-exigr-svlb-c"
      },
      {
        tf_identifier               = "cpu-p-exigr-tgw-a"
        name                        = "ww-an2-sbn-cpu-p-exigr-tgw-a"
        cidr_block                  = "10.2.0.224/28"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "cpu-p-exigr-tgw-a"
      },
      {
        tf_identifier               = "cpu-p-exigr-tgw-c"
        name                        = "ww-an2-sbn-cpu-p-exigr-tgw-c"
        cidr_block                  = "10.2.0.240/28"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "cpu-p-exigr-tgw-c"
      },

    ]
    route_tables = [
      {
        tf_identifier = "cpu-p-exigr-exlb-a"
        name          = "ww-an2-rtb-cpu-p-exigr-exlb-a"
      },
      {
        tf_identifier = "cpu-p-exigr-exlb-c"
        name          = "ww-an2-rtb-cpu-p-exigr-exlb-c"
      },
      {
        tf_identifier = "cpu-p-exigr-inlb-a"
        name          = "ww-an2-rtb-cpu-p-exigr-inlb-a"
      },
      {
        tf_identifier = "cpu-p-exigr-inlb-c"
        name          = "ww-an2-rtb-cpu-p-exigr-inlb-c"
      },
      {
        tf_identifier = "cpu-p-exigr-utm-a"
        name          = "ww-an2-rtb-cpu-p-exigr-utm-a"
      },
      {
        tf_identifier = "cpu-p-exigr-utm-c"
        name          = "ww-an2-rtb-cpu-p-exigr-utm-c"
      },
      {
        tf_identifier = "cpu-p-exigr-waf-a"
        name          = "ww-an2-rtb-cpu-p-exigr-waf-a"
      },
      {
        tf_identifier = "cpu-p-exigr-waf-c"
        name          = "ww-an2-rtb-cpu-p-exigr-waf-c"
      },
      {
        tf_identifier = "cpu-p-exigr-svlb-a"
        name          = "ww-an2-rtb-cpu-p-exigr-svlb-a"
      },
      {
        tf_identifier = "cpu-p-exigr-svlb-c"
        name          = "ww-an2-rtb-cpu-p-exigr-svlb-c"
      },
      {
        tf_identifier = "cpu-p-exigr-tgw-a"
        name          = "ww-an2-rtb-cpu-p-exigr-tgw-a"
      },
      {
        tf_identifier = "cpu-p-exigr-tgw-c"
        name          = "ww-an2-rtb-cpu-p-exigr-tgw-c"
      },
    ]
  }
}