terraform {
  required_providers {
    docker = {
        source  = "kreuzwerker/docker"
        version = "3.6.2"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "6.2.0"
    }
  }
  backend s3 {
      bucket = "my-nginx-docker-bucket"
      key    = "terraform-module-used"
      region = "ap-south-1"
    }
}

provider "docker" {}

provider "aws" {
  region = "ap-south-1"
}