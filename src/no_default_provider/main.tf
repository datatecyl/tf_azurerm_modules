terraform {
  required_version = "=0.12.26"
}

provider "azurerm" {
  alias   = "provider1"
  version = "=2.11.0"
  features {}
}

provider "azurerm" {
  alias   = "provider2"
  version = "=2.11.0"
  features {}
}

module "module1" {
  source = "../modules/intermediate"
  providers = {
    azurerm = azurerm.provider1
  }

  base_name = "v1r7u_provider1"
}

module "module2" {
  source = "../modules/intermediate"
  providers = {
    azurerm = azurerm.provider2
  }

  base_name = "v1r7u_provider2"
}
