provider "azurerm" {
    subscription_id = "f614c57b-d44a-48fc-82fb-6b497f2fac55"
    #version = "~> 2.8"
    #region="East US"
    features {}
}



resource "azurerm_resource_group" "rg" {
  name     = "wgs-rg-script"
  location = "East US"
}



resource "azurerm_snapshot" "snapshot" {
  name                = "wgs-vm-web70-Uc-snap"
  location            = "${azurerm_resource_group.rg.location}"
  resource_group_name = "${azurerm_resource_group.rg.name}"
  create_option       = "Copy"
  source_uri          = "/subscriptions/f614c57b-d44a-48fc-82fb-6b497f2fac55/resourceGroups/wgs-rg-NetOx70/providers/Microsoft.Compute/disks/wgsvmweb70ua-osdisk-20191111-074305"
}
