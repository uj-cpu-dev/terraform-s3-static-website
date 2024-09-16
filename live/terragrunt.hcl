locals {
  env_vars = read_terragrunt_config("env.hcl")
  env_name = local.env_vars.locals.env
}

# Receive environment as input from child
terraform {
  source = "../../../modules/${local.env_name}/s3"
}