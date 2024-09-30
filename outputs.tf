# Output the Resource Group Name
output "resource_group_name" {
  description = "The name of the resource group"
  value       = azurerm_resource_group.demo_rg.name
}

# Output for the App Service Plan ID
output "app_service_plan_id" {
  description = "The ID of the App Service Plan"
  value       = azurerm_app_service_plan.demo_app_service_plan.id
}

# Output the First App Service Name
output "app_service_1_name" {
  description = "The name of the first App Service"
  value       = azurerm_app_service.demo_app_service_1.name
}

# Output the Second App Service Name
output "app_service_2_name" {
  description = "The name of the second App Service"
  value       = azurerm_app_service.demo_app_service_2.name
}