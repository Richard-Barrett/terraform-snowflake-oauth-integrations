terraform {
  required_version = ">= 1.3.6"
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.89.0"
    }
  }
}

provider "snowflake" {}

module "snowflake_oauth_integration_test" {
  source = "../../"

  name         = "TEST"
  comment      = "TEST Comment"
  oauth_client = "TEST"
}
