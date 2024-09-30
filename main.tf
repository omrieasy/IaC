# Resource Group Definition
resource "azurerm_resource_group" "demo_rg" {
  name     = var.resource_group_name
  location = var.location
}

# App Service Plan Definition
resource "azurerm_app_service_plan" "demo_app_service_plan" {
  name                = var.app_service_plan_name
  location            = azurerm_resource_group.demo_rg.location
  resource_group_name = azurerm_resource_group.demo_rg.name
  sku {
    tier = "Standard"
    size = var.app_service_plan_sku
  }
}

# First App Service
resource "azurerm_app_service" "demo_app_service_1" {
  name                = var.app_service_1_name
  location            = azurerm_resource_group.demo_rg.location
  resource_group_name = azurerm_resource_group.demo_rg.name
  app_service_plan_id = azurerm_app_service_plan.demo_app_service_plan.id

  app_settings = {
    "WEBSITE_RUN_FROM_PACKAGE" = "1"
  }

  site_config {
    always_on = true
  }
}

# Second App Service
resource "azurerm_app_service" "demo_app_service_2" {
  name                = var.app_service_2_name
  location            = azurerm_resource_group.demo_rg.location
  resource_group_name = azurerm_resource_group.demo_rg.name
  app_service_plan_id = azurerm_app_service_plan.demo_app_service_plan.id

  app_settings = {
    "WEBSITE_RUN_FROM_PACKAGE" = "1"
  }

  site_config {
    always_on = true
  }
}