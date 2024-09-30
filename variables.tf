variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "demo-resource-group"
}

variable "location" {
  description = "Azure region for the resources"
  type        = string
  default     = "israelcentral"
}

variable "app_service_plan_name" {
  description = "Name of the App Service Plan"
  type        = string
  default     = "demo-app-service-plan"
}

variable "app_service_1_name" {
  description = "Name of the first App Service"
  type        = string
  default     = "demo-appservice-1"
}

variable "app_service_2_name" {
  description = "Name of the second App Service"
  type        = string
  default     = "demo-appservice-2"
}

variable "app_service_plan_sku" {
  description = "SKU for the App Service Plan (e.g., B1, S1, P1)"
  type        = string
  default     = "S1"
}