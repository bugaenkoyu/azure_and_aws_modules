resource "azurerm_virtual_network" "vnet" {
  name                = var.azurerm_virtual_network_name
  address_space       = var.azurerm_virtual_network_address_space
  location            = azurerm_resource_group.azure.location
  resource_group_name = azurerm_resource_group.azure.name
}

resource "azurerm_subnet" "subnet" {
  name                 = var.azurerm_subnet_name
  resource_group_name  = azurerm_resource_group.azure.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.azurerm_subnet_address_prefixes
}

resource "azurerm_network_interface" "nic" {
  name                = var.azurerm_network_interface_name
  location            = azurerm_resource_group.azure.location
  resource_group_name = azurerm_resource_group.azure.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.public_ip.id
  }
}

resource "azurerm_public_ip" "public_ip" {
  name                = var.azurerm_public_ip_name
  location            = azurerm_resource_group.azure.location
  resource_group_name = azurerm_resource_group.azure.name
  allocation_method   = var.azurerm_public_ip_allocation_method
}
