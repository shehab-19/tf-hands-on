terraform {
  backend "s3" {
    bucket = "my-tfstatefile-shehab" 
    key    = "terraform/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}