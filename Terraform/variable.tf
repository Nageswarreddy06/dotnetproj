variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "rg-terraform"
}

variable "location" {
  description = "The location of the resource group"
  type        = string
  default     = "East US"
}

variable "ASP_Name" {
  description = "The name of the App Service Plan"
  type        = string
  default     = "asp-netflix"
}

variable "App_Name" {
  description = "The name of the App Service"
  type        = string
  default     = "webapp-netflix630"
}