locals {
  environment = "default"  # Default value in case not passed by the child
}

# Receive environment as input from child
terraform {
  source = "${get_parent_terragrunt_dir()}/modules/${local.environment}/s3"
}