resource "azurerm_resource_group" "this" {
    name     = var.resource_group_name
    location = var.location
}

resource "azurerm_service_plan" "this" {
    name                = var.app_service_plan_name
    location            = azurerm_resource_group.this.location
    resource_group_name = azurerm_resource_group.this.name
    sku_name = var.app_service_plan_sku_name
    os_type = var.app_service_plan_os_type
}

resource "azurerm_app_service" "this" {
    name = var.app_service_name
    location = azurerm_resource_group.this.location
    resource_group_name = azurerm_resource_group.this.name
    app_service_plan_id = azurerm_service_plan.this.id
}