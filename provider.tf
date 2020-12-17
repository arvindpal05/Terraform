provider "aws" {
  region = "us-east-1"  
}
terraform {
  backend "s3" {
    bucket ="arvi-tfe-state-bucket"
    key ="dev"
    region ="us-east-1"
  }
}