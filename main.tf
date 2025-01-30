terraform {
   required_providers {
     azurerm = {
       source  = "hashicorp/azurerm"
       version = "~> 4.0"
     }
   }
 }
    
 provider "azurerm" {
   features {}
 }
    
 locals {
   prefix = "juergen-iac"
   region = "West Europe"
   tags = {
     cost_center = "iac research"
   }
 }
    
 resource "azurerm_resource_group" "juergen-iac_rg" {
   name     = "rg-${local.prefix}"
   location = local.region
   tags     = local.tags
 }
    
 resource "azurerm_resource_group" "juergen-iac_dev_rg" {
   name     = "rg-${local.prefix}_dev"
   location = local.region
   tags     = local.tags
 }