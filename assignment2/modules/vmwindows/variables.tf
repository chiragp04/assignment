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

variable "subnet_id" {
    default = ""
}

variable "windows_name" {
  default = ""
}

variable "windows_size" {
  default = "Standard_B1ms"
}

variable "admin_username" {
  default = "n01561514"
}

variable "admin_password" {
  default = "Chirag@123"
}

variable windows_os_disk {
    type = map(string)
    default = {
        create_option = "Attach"
        storage_account_type = "StandardSSD_LRS"
        disk_size = 128
        caching = "ReadWrite"
    }
}


variable windows_os {
    type = map(string)
    default = {
        publisher = "MicrosoftWindowsServer"
        offer = "WindowsServer"
        sku = "2016-Datacenter"
        version = "latest"
    }
}

variable "windows_avs" {
    default = "windows_avs"
}

variable "windows_avs_values" {
    type = map(string)
    default = {
        update_domain = 5
        fault_domain = 2
    }
}


variable "storage_account_uri" {
    default = ""
}

variable "windows_vmexe" {
  type = map(string)
  default = {
    publisher  = "Microsoft.Azure.Security.AntimalwareSignature"
    type  = "AntimalwareConfiguration"
    type_handler_version ="2.58"
  }
}
