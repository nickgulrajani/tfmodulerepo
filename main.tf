provider "azurerm" {
  features {}
}

module "network" {
  source = "./network_module"

  resource_group_name = "nic_terraform_RG"
  location            = "eastus"
  network_name        = "nickmodnw"
  address_space       = ["10.0.0.0/16"]
}

