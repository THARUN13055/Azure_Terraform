variable "route-table" {
  type = list(string)
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "route-name" {
  type = strinb
}

variable "address_prefix" {
  type = string
}

variable "subnet_id" {
  type = string
}

variable "route_table_id" {
  type = string
}
