terraform {
  backend "s3" {
    bucket       = "venky-terraform-state-2026-unique"
    key          = "terraform-prac/terraform.tfstate"
    region       = "ap-south-1"
    encrypt      = true
    use_lockfile = true
  }
}
