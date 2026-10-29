terraform {
  required_version = ">= 1.11.0, < 2.0.0"
    backend "s3" {
    bucket       = "venky-terraform-state-2026-unique"
    key          = "venky.tfstate"
    region       = "ap-south-1"
    use_lockfile = true
  }


provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "venky-terraform-bucket-29-10-2026"
}
resource "aws_security_group" "ec2-sg" {
    name        = "ec2-sg"
    description = "Security group for EC2 instances" 
}
resource "aws_instance" "my_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
}
