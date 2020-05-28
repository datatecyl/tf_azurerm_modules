terraform {
  required_version = "=0.12.26"
}

# DEFAULT provider
provider "azurerm" {
  version = "=2.11.0"
  features {}
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

# use DEFAULT provider
module "default" {
  source = "../modules/intermediate"

  base_name = "v1r7u_default"
}

module "provider1" {
  source = "../modules/intermediate"
  providers = {
    azurerm = azurerm.provider1
  }

  base_name = "v1r7u_provider1"
}

module "provider2" {
  source = "../modules/intermediate"
  providers = {
    azurerm = azurerm.provider2
  }

  base_name = "v1r7u_provider2"
}
