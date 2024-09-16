# Define default values
TERRAGRUNT_CMD ?= terragrunt
ENV ?= dev  # Default environment is 'dev' if not set
TG_DIR ?= live/$(ENV)/s3

# Targets
plan:
	$(TERRAGRUNT_CMD) plan --terragrunt-working-dir $(TG_DIR)

apply:
	$(TERRAGRUNT_CMD) apply --terragrunt-working-dir $(TG_DIR)

destroy:
	$(TERRAGRUNT_CMD) destroy --terragrunt-working-dir $(TG_DIR)

clean:
	rm -rf .terraform
