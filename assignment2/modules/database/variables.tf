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

variable "admin_username" {
  default = "n01561514"
}

variable "admin_password" {
  default = "Chirag@123"
}

variable "postsql_server_name" {
    default = "assignment-postsql"
}

variable "postsql_data_name" {
    default = "assignment-database"
}
