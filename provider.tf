terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.17.0"
    }
  }



  backend "s3" {
    bucket = "aslamroboshop-remote-state"
    key = "vpc-demo"
    region = "us-east-1"
    dynamodb_table = "roboshop-state-lock"   #here we are locking s3 bucket to avid the duplication and some error while exicuting 
   
  }



}


provider "aws" {
  # Configuration options
}