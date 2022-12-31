variable "azurerm_resource_group_name" {
  default = "azure-terraform"
}

variable "azurerm_resource_group_location" {
  default = "West Europe"
}

variable "azurerm_virtual_network_name" {
  default = "terraform-network"
}

variable "azurerm_virtual_network_address_space" {
  type    = list(any)
  default = ["10.0.0.0/16"]
}

variable "azurerm_subnet_name" {
  default = "azuresubnet"
}

variable "azurerm_subnet_address_prefixes" {
  type    = list(any)
  default = ["10.0.2.0/24"]
}

variable "azurerm_network_security_group_name" {
  default = "azure_nsg"
}

variable "azurerm_network_interface_name" {
  default = "azure-nic"
}

variable "azurerm_public_ip_name" {
  default = "public_ip"
}

variable "azurerm_public_ip_allocation_method" {
  default = "Static"
}

variable "azurerm_linux_virtual_machine_name" {
  default = "azure-server"
}

variable "azurerm_linux_virtual_machine_size" {
  default = "Standard_B1s"
}

variable "azurerm_linux_virtual_machine_admin_username" {
  default = "bugaenko"
}

variable "azurerm_linux_virtual_machine_admin_password" {
  default = "12345678Qaz@"
}

variable "azurerm_linux_virtual_machine_user_data" {
  default = "data/grafana.sh"
}

variable "admin_ssh_key_username" {
  default = "bugaenko"
}

variable "admin_ssh_key_public_key" {
  default = "~/.ssh/terraform_rsa.pub"
}

variable "os_disk_caching" {
  default = "ReadWrite"
}

variable "os_disk_storage_account_type" {
  default = "StandardSSD_LRS"
}

variable "source_image_reference_publisher" {
  default = "Canonical"
}

variable "source_image_reference_offer" {
  default = "0001-com-ubuntu-confidential-vm-jammy"
}

variable "source_image_reference_sku" {
  default = "22_04-lts-cvm"
}

variable "source_image_reference_version" {
  default = "latest"
}