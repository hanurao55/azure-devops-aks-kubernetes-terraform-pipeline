provider "azuread" {
client_id = "97b0bfc2-0293-4bf8-a3bf-57e6ced456fc"
client_secret = "NZv7Q~TIiyN~nZ4qdt3SMdIpAzOHq1qE.hx7b"
tenant_id = "cddd6868-6efe-47c5-aba6-faf5b5512fce"
}

# Create Azure AD Group in Active Directory for AKS Admins
resource "azuread_group" "aks_administrators" {
  name        = "${azurerm_resource_group.aks_rg.name}-administrators"
  description = "Azure AKS Kubernetes administrators for the ${azurerm_resource_group.aks_rg.name}-administrators cluster."
  #security_enabled=true
}
