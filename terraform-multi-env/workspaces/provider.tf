terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.98.0"
    }
  }
  backend "s3"{
    bucket = "mahi-s3-bucket"
    key = "workspace-demo"
    region = "us-east-1"
    encrypt = true 
    use_lockfile = true
  
  }
}

provider "aws" {
  # Configuration options
}