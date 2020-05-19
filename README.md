# disk-snapshot-module
creating snapshot of disk
module "disksnapshot" {
  source               = "Azure/disk-snapshot/azurerm"
  resource_group_name  = "wgs-rg-script"
  version              = "0.1.0"
  managed_disk_names   = ["wgsvmweb70ua-osdisk-20191111-074305"]
  location             = "${azurerm_resource_group.rg.location}"
}
