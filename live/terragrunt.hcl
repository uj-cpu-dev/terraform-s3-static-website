# Get the environment from the child terragrunt.hcl file
locals {
  environment = get_env("TG_ENVIRONMENT", "default")  # fallback to "default" if not set
}


# Define where the Terraform module is located
terraform {
  source = "${get_parent_terragrunt_dir()}/modules/${local.environment}/s3"
}