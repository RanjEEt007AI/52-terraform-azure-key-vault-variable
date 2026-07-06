# Get current Azure client details
data "azurerm_client_config" "current" {}

# Resource Group
resource "azurerm_resource_group" "ranjeet-rg" {
  name     = var.resource_group_name
  location = var.location
}

# Azure Key Vault
resource "azurerm_key_vault" "kv" {
  name                        = var.key_vault_name
  location                    = azurerm_resource_group.ranjeet-rg.location
  resource_group_name         = azurerm_resource_group.ranjeet-rg.name
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  sku_name                    = var.sku_name

  enabled_for_disk_encryption = true
  purge_protection_enabled    = false
  soft_delete_retention_days  = 7

  tags = var.tags
}

# Access Policy
resource "azurerm_key_vault_access_policy" "policy" {
  key_vault_id = azurerm_key_vault.kv.id
  tenant_id    = data.azurerm_client_config.current.tenant_id
  object_id    = data.azurerm_client_config.current.object_id

  secret_permissions = [
    "Get",
    "List",
    "Set",
    "Delete"
  ]
}