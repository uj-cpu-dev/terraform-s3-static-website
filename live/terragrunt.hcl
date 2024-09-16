# Receive environment as input from the child
locals {
  environment = terraform {
  source = "${get_parent_terragrunt_dir()}/modules/${local.environment}/s3"
}

# Define where the Terraform module is located based on the environment
terraform {
  source = "${get_parent_terragrunt_dir()}/modules/${local.environment}/s3"
}
