terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "exampleaws" {
  ami           = "ami-02354e95b39ca8dec"
  instance_type = "t2.micro"
}