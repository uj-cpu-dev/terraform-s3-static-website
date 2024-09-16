locals {
  environment = read_terragrunt_config("env.hcl")
}

# Receive environment as input from child
terraform {
  source = "../../../modules/${local.environment}/s3"
}