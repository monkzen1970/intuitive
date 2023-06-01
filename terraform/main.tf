resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

module "network" {
  source = "./modules/network"
  resource_group_name = azurerm_resource_group.rg.name
  location = var.location
  vnet_name = var.vnet_name
  subnet_name = var.subnet_name
}

module "compute" {
  source = "./modules/compute"
  resource_group_name = azurerm_resource_group.rg.name
  location = var.location
  vm_count = 2
  storage_account_name = var.storage_account_name
  subnet_id = module.network.subnet_id
}
