#### VPC ###################################################################################
resource "aws_vpc" "default" {
  cidr_block = var.vpc.cidr_block
  tags = {
    Name = var.vpc.name
  }
}

#### Subnet ################################################################################
resource "aws_subnet" "default" {
  for_each                = { for sbn in var.subnets : sbn.tf_identify => sbn }
  vpc_id                  = aws_vpc.default.id
  cidr_block              = each.value.cidr_block
  availability_zone       = each.value.availability_zone
  map_public_ip_on_launch = false
  tags = {
    Name = each.value.name
  }
  depends_on = [aws_vpc.default]
}

#### Route Table ###########################################################################
resource "aws_route_table" "default" {
  for_each = { for rtb in var.route_tables : rtb.tf_identify => rtb }
  vpc_id   = aws_vpc.default.id
  tags = {
    Name = each.value.name
  }
  depends_on = [aws_vpc.default]
}

locals {
  route_table_id = { for key, rtb in aws_aws_route_table.default : rtb.tags["Name"] => rtb.id }
}
#### Route Table Association ###############################################################
resource "aws_route_table_association" "drs_route_table_association" {
  for_each       = { for sbn in var.subnets : sbn.name => sbn 
                    if contains(keys(local.route_table_id), sbn.association_route_table) && contains(keys(local.subnet_id), sbn.subnet_name)}
  subnet_id      = aws_subnet.default[each.value.tf_identify].id
  route_table_id = aws_route_table.default[each.value.association_route_table].id
  depends_on     = [aws_subnet.default, aws_route_table.default]
}
