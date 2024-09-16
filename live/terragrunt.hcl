locals {
  environment = "dev"  # Default value in case not passed by the child
}

# Receive environment as input from child
terraform {
  source = "../modules/${local.environment}/s3"
}