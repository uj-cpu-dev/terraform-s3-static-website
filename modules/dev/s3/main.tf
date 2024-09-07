data "aws_region" "current" {}

data "aws_canonical_user_id" "this" {
  count = local.create_bucket && local.create_bucket_acl == null ? 1 : 0
}

data "aws_caller_identity" "current" {}

data "aws_partition" "current" {}

locals {
  create_bucket = var.create_bucket

  create_bucket_acl = (var.acl != null && var.acl != "null")
}

resource "aws_s3_bucket" "this" {
  count = local.create_bucket ? 1 : 0

  bucket        = var.bucket
}