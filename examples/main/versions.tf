terraform {
  required_version = ">= 1.9.2"

  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      # version = "~> 4.0"
      version = ">= 3.117.0, < 5"
    }
  }
}
