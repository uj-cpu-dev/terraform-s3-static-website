# Explicitly set the environment for this folder (dev in this case)
locals {
  environment = "dev"
}

# Include the parent configuration
include {
  path = find_in_parent_folders()
}

# Pass the environment to the parent
inputs = {
  environment = local.environment
}
