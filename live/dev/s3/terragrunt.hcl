include "root" {
  path = find_in_parent_folders()
}

# Pass environment as an input to the parent
locals {
  TG_ENVIRONMENT = "dev"
}