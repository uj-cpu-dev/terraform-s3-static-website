TERRAGRUNT_CMD=terragrunt
TG_DIR=live/dev/s3

plan:
	$(TERRAGRUNT_CMD) plan --terragrunt-working-dir $(TG_DIR)

apply:
	$(TERRAGRUNT_CMD) apply --terragrunt-working-dir $(TG_DIR)

destroy:
	$(TERRAGRUNT_CMD) destroy --terragrunt-working-dir $(TG_DIR)

clean:
	rm -rf .terraform
