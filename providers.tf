terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.46.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

provider "aws" {
  access_key = "Put_your_access_key"
  secret_key = "Put_your_secret_key"
  region     = "eu-central-1"
}

provider "azurerm" {
  features {}
  subscription_id = "Put_your_subscription_id"
  client_id       = "Put_your_client_id"
  client_secret   = "Put_your_client_secret"
  tenant_id       = "Put_your_tenant_id"
}