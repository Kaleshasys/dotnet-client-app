
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name 
  location = var.resource_group_location 
}

resource "azurerm_service_plan" "service-plan" {
  name                = var.service_plan_name 
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku_name            = var.sku_name 
  os_type             = var.os_type 
}

resource "azurerm_windows_web_app" "example" {
  name                = var.web_app_name 
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_service_plan.service-plan.location
  service_plan_id     = azurerm_service_plan.service-plan.id

  site_config {
    application_stack {
        current_stack = var.current_stack 
        dotnet_version = var.dotnet_version
    }
  }
}