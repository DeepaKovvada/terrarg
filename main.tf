 "azurerm_resource_group" "example" {
  name     = "rg001"
  location = "canada central"
}
resource "azurerm_public_ip" "example" {
  name                = "pip001"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  allocation_method   = "Static"

  tags = {
    environment = "Production"
  }
}
