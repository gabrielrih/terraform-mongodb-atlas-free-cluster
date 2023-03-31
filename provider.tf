terraform {
  required_providers {
    mongodbatlas = {
      source  = "mongodb/mongodbatlas"
      version = "~> 1.3.1"
    }
  }
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "ae2b1fca515949e5d54fb22b8ed95575"
    workspaces {
      name = "mongodb-atlas"
    }
  }
  required_version = ">=1.4.4"
}