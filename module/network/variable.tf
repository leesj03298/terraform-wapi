variable "vpc" {
  type = object({
    name = string
    cidr_block = string
    
  })
}

variable "subnets" {
  
}

variable "route_tables" {
  
}