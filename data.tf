data "azurerm_key_vault" "key_vault" {
  name                = "atudemytf-vault"
  resource_group_name = "remote-state"
}

data "azurerm_key_vault_secret" "admin_password" {
  name         = "rsat-pass"
  key_vault_id = data.azurerm_key_vault.key_vault.id

}