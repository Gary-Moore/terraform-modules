output "app_service_name" {
    description = "The name of the App Service"
    value       = azurerm_app_service.this.name
}