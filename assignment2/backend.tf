terraform {
  backend "azurerm" {
    resource_group_name  = "n01561514-assignment1-RG"
    storage_account_name = "assignment1514"
    container_name       = "terraformstate"
    key                  = "terraform.tfstate"
  }
}

