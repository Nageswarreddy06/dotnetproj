terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rgforwebapp" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_service_plan" "nfwebplan" {
  name                = var.ASP_Name
  resource_group_name = azurerm_resource_group.rgforwebapp.name
  location            = azurerm_resource_group.rgforwebapp.location
  os_type             = "Windows"
  sku_name            = "F1"
}

resource "azurerm_windows_web_app" "nfwebapp" {
  name                = var.App_Name
  resource_group_name = azurerm_resource_group.rgforwebapp.name
  location            = azurerm_resource_group.rgforwebapp.location
  service_plan_id     = azurerm_service_plan.nfwebplan.id

  site_config {
    always_on = false
  }
}