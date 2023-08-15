provider "aws" {
  region = "us-east-1"
}

##############
# IAM account
##############
module "iam_account" {
  source = "../../modules/iam-account"

  account_alias = "necromancer-company-001"

  minimum_password_length = 42
  require_numbers         = true
  require_symbols         = true
  require_uppercase_characters = true
  require_lowercase_characters = true
  password_reuse_prevention = 10
  get_caller_identity = true
}
