# Get the environment from the child terragrunt.hcl file or fallback to default
locals {
  environment = get_env("TG_ENVIRONMENT", "dev")  # default to "dev"
}

# Include the parent configuration, passing environment as an input
include {
  path = find_in_parent_folders()
}

# Define inputs to the parent configuration
inputs = {
  environment = local.environment
}
