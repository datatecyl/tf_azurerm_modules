variable "base_name" {}

resource "azurerm_resource_group" "leaf" {
  name     = "${var.base_name}-leaf-rg"
  location = "westeurope"
}
