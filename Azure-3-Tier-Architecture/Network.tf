module "virtual-network" {
  source = "./Modules/Networks/Virtual-Network"

  vnet-name           = "paynpro-vnet"
  location            = local.location
  resource_group_name = local.resource_group
  address_space       = ["10.0.0.0/16"]
  tags                = local.tags
}

# Subnets
module "virtual-subnet" {
  source = "./Modules/Networks/Subnets"

  resource_group_name  = local.resource_group
  virtual_network_name = module.virtual-network.vnet-name
  subnets              = local.subnets
}
