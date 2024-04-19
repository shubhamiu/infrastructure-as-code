resource "azurerm_container_registry" "container_registry" {
    name                    =var.app_name_container_registry
    resource_group_name     =azurerm_resource_group.practicum16.name
    location                =var.location
    admin_enabled           =true
    sku                     ="Basic"
}

output "registry_hostname" {
    value = azurerm_container_registry.container_registry.login_server
}

output "registery_un" {
    value = azurerm_container_registry.container_registry.admin_username
}

output "registery_pw" {
    value = azurerm_container_registry.container_registry.admin_password
    sensitive = true
}