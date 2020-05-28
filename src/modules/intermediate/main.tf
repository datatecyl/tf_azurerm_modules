variable "base_name" {}

resource "azurerm_resource_group" "intermediate" {
  name     = "${var.base_name}-itermediate-rg"
  location = "westeurope"
}

module "leaf" {
  source = "./leaf_module"

  base_name = var.base_name
}
