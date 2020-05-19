variable "subscription_id" {
  description = "The id of the subscription."
  type = "string"
  default     =  ""
}

variable "resource_group_name" {
  description = "The name of the resource group in which the resources will be created"
  type = "string"
  default     =  ""
}
#variable "version" {
  #type        = "string"
  #default     = "1"
  #description = "Snapshot version"
#}

variable "location" {
  description = "The location/region where the virtual machine is created. Changing this forces a new resource to be created."
  type = "string"
  default = "East US"
}

variable "snapshot_name" {
  description = "The name of the snapshot"
  type = "string"
  default     =  ""
}

variable "snapshot_create_option" {
  description = "Indicates how the snapshot is to be created. Possible values are Copy or Import. Changing this forces a new resource to be created."
  type = "string"
  default     =  ""
}
variable "source_uri" {
  description = "Specifies the URI to a Managed or Unmanaged Disk. Changing this forces a new resource to be created."
  type = "string"
  
}
