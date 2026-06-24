output "subnet_ids" {

  value = {
    for k, subnet in azurerm_subnet.az-subnet :
    k => subnet.id
  }

}