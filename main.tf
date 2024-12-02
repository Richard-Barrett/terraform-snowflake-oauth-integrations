terraform {
  required_version = ">= 1.3.6"
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.99.0"
    }
  }
}

resource "snowflake_oauth_integration" "this" {
  name                         = var.name
  comment                      = var.comment
  oauth_client                 = var.oauth_client
  enabled                      = var.enabled
  oauth_issue_refresh_tokens   = var.oauth_issue_refresh_tokens
  oauth_refresh_token_validity = var.oauth_refresh_token_validity
  oauth_redirect_uri           = var.oauth_redirect_uri
  blocked_roles_list           = var.blocked_roles_list
}
