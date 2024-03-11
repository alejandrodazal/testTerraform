provider "aws" {
  region = var.region
}


terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.1"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}


provider "random" {
  # Este bloque se deja vacío a menos que necesites configuración específica para el proveedor
}

resource "random_pet" "punto4s3" {
  length    = 2
  separator = "-"
}