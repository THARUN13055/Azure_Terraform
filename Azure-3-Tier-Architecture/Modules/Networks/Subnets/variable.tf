variable "resource_group_name" {
  type = string
}

variable "virtual_network_name" {
  type = string
}

variable "subnets" {
  type = map(object({
    name           = string
    address_prefix = list(string)
    type           = string
  }))
}
