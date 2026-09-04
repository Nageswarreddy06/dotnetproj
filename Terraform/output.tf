output "web_app_name" {
  value = azurerm_windows_web_app.nfwebapp.name
}

output "web_app_url" {
  value = azurerm_windows_web_app.nfwebapp.default_hostname
}