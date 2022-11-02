terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
provider "aws" {
  region = "us-east-2"
}
# Create a VPC
resource "aws_vpc" "Ron-Vaknin-dev-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "Ron-Vaknin-dev-vpc"
  }
}
resource "aws_subnet" "Ron_Vaknin-k8s-subnet" {
  vpc_id     = aws_vpc.Ron-Vaknin-dev-vpc.id
  cidr_block = "10.0.0.0/27"

 tags = {
    Name = "Ron_Vaknin-k8s-subnet"
  }
}
