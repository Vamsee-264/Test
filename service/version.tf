variable "global_settings" {
  description = "Global settings object"
}
variable "resource_group_name" {
  description = "The name of the resource group in which the resource is created"
  type        = string
  default = ""
}
variable "tags" {
  description = "Custom tags for the resource"
  default     = {}
}
variable "location" {
  description = "Specifies the supported Azure location where to create the resource. Ommitting this variable will default to the var.global_settings.location value."
  type        = string
  default     = null
}
variable "resource_group" {
  description = "Configuration settings object for the Resource Group resource"
}
output "id" {
  description = "The ID of the Resource Group"
  value       = azurerm_resource_group.rg.id
}

output "name" {
  description = "The Name of the Resource Group"
  value       = azurerm_resource_group.rg.name
}

output "location" {
  description = "The Location of the Resource Group"
  value       = azurerm_resource_group.rg.location
}

output "tags" {
  description = "The Tags of the Resource Group"
  value       = azurerm_resource_group.rg.tags
}
