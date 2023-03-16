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

variable "linux_network_interface_id" {
    default = ""
}

variable "linux_network_interface_name" {
    default = ""
}

variable "linux_pip_id" {
    default = ""
}

variable "linux_name" {
    default = ""
}

variable "loadbalancer-pubip" {
    default = "loadbalancer-pubip-1514"
}

variable "loadbalancer" {
    type = map(string) 
    default = {
        name    = "assignment-loadbalancer"
        frontend_ip_configuration = "publicip-1514"
    }
}

variable "backend_address_pool" {
    default = "backend-addresspool-1514"
}

variable "loadbalancer_pool_association" {
    default = "loadbalancer-pool-association-1514"
}

variable "loadbalancer_rule" {
    type = map(string) 
    default = {
        name = "assignment-loadbalancer-rule"
        protocol = "Tcp"
        frontend_port = 1514
        backend_port = 1514
        frontend_ip_configuration_name = "PublicIPAddress"
    }
}

variable "loadbalancer_probe" {
    type = map(string)
    default = {
        name                = "assignment-probe-1514"
        protocol            = "Tcp"
        port                = 80
        interval_in_seconds = 5
        number_of_probes    = 2
    }
}
