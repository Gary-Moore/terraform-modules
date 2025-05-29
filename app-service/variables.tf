variable "resource_group_name" {
    description = "Name of the resource group"
    type        = string
}

variable "location" {
    description = "Azure region where resources will be created"
    type        = string
}

variable "app_service_plan_name" {
    description = "Name of the App Service Plan"
    type        = string
}

variable "app_service_plan_sku_name" {
    description = "SKU name for the App Service Plan"
    type        = string  
}

variable "app_service_plan_os_type" {
    description = "Operating system type for the App Service Plan"
    type        = string  
}

variable "app_service_name" {
    description = "Name of the App Service"
    type        = string  
}