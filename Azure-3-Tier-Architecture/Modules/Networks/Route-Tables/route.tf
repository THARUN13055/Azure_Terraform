resource "azurerm_route_table" "az-route-table" {
  for_each = var.route-table
  name                = each.value.name
  location            = var.location
  resource_group_name = var.resource_group_name
}

# Route 
resource "azurerm_route" "az-routes" {
  for_each = var.routes
  name                = each.value.name
  resource_group_name = var.resource_group_name
  route_table_name    = each.value.route_table_name
  address_prefix      = var.address_prefix
  next_hop_type       = var.
}

# subnet Associate
resource "azurerm_subnet_route_table_association" "az-route-table-associate" {
  subnet_id      = var.subnet_id
  route_table_id = var.route_table_id
}