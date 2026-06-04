resource "azurerm_resource_group" "rg_devsecops" {
  name     = "rg-devsecops-lab"
  location = "northeurope"
}

resource "azurerm_virtual_network" "vnet_core" {
  name                = "vnet-security-core"
  location            = azurerm_resource_group.rg_devsecops.location
  resource_group_name = azurerm_resource_group.rg_devsecops.name
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_network_security_group" "nsg_core" {
  name                = "nsg-security-core"
  location            = azurerm_resource_group.rg_devsecops.location
  resource_group_name = azurerm_resource_group.rg_devsecops.name

  security_rule {
    name                       = "DenyAllInbound"
    priority                   = 1000
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

resource "azurerm_storage_account" "sa_secure" {
  name                          = "sasecopslab20261199"
  resource_group_name           = azurerm_resource_group.rg_devsecops.name
  location                      = azurerm_resource_group.rg_devsecops.location
  account_tier                  = "Standard"
  account_replication_type      = "LRS"
  public_network_access_enabled = false
  min_tls_version               = "TLS1_2"
}

data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "kv_core" {
  name                        = "kv-secops-20261199"
  location                    = azurerm_resource_group.rg_devsecops.location
  resource_group_name         = azurerm_resource_group.rg_devsecops.name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false
  sku_name                    = "standard"

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions = ["Get", "List", "Create", "Delete", "Recover", "Backup", "Restore", "Purge"]
    secret_permissions = ["Get", "List", "Set", "Delete", "Recover", "Backup", "Restore", "Purge"]
  }
}

resource "azurerm_key_vault_secret" "db_password" {
  name         = "admin-db-password"
  value        = "S3cr3tP@ssw0rd!2026"
  key_vault_id = azurerm_key_vault.kv_core.id
  depends_on   = [azurerm_key_vault.kv_core]
}
