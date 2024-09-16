locals {
  environment = read_terragrunt_config(find_in_parent_folders("env.hcl"))
}

# Receive environment as input from child
terraform {
  source = "../../../modules/${local.environment}/s3"
}