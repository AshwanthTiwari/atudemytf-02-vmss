terraform {
  backend "azurerm" {
    resource_group_name  = "remote-state"
    storage_account_name = "attfstate"
    container_name       = "attfsstatecontain"
    key                  = "web.tfstate"
  }
}

