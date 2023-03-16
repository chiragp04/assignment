locals {
  common_tags = {
    Project = "Automation Project – Assignment 1" 
	Name = "Chirag.Patel"
	ExpirationDate = "2023-06-30" 
	Environment = "Lab" 
  }
}

variable "resource_group"{
    default = ""
}

variable "location" {
    default = ""
}

variable "log_analytics_workspace" {
    type = map(string)
    default = {
        name = "assignment-workspace"
        sku = "PerGB2018"
        ret-in-days = 30
    }
}

variable "recovery_services_vault" {
    type = map(string)
    default = {
        name = "assignment-vault"
        sku = "Standard"
    }
}

variable "storage_account" {
    type = map(string)
    default = {
        name = "assignment1514"
        account_tier = "Standard"
        account_replication_type = "LRS"
    }
}

variable "storage_container" {
    type = map(string)
    default = {
        name = "assignment-container"
        container_access_type = "private"
    }
}

variable "storage_blob" {
    type = map(string)
    default = {
        name = "assignment-blob"
        type  = "Block"
    }
}
