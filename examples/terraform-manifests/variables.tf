# Define Input Variables
# 1. Bring Your Own VNET
# 2. 

variable "bring_your_own_vnet" {
  type    = bool
  default = true
}

variable "create_resource_group" {
  type     = bool
  default  = true
  nullable = false
}

variable "environment" {
  type = string
}

variable "create_role_assignments_for_application_gateway" {
  type    = bool
  default = true
}

variable "location" {
  default = "westeurope"
}

variable "resource_group_name" {
  type    = string
  default = "terraform-aks"
}

variable "use_brown_field_application_gateway" {
  type    = bool
  default = false
}
