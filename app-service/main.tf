resource "azurerm_resource_group" "this" {
    name     = var.resource_group_name
    location = var.location
}

resource "azurerm_app_service" "this" {

}