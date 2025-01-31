terraform {
  required_version = ">= 1.3.6"
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = ">= 1.0.0"
    }
  }
}

resource "snowflake_oauth_integration_for_custom_clients" "this" {
  name                             = "${upper(var.name)}_OAUTH_INTEGRATION"
  oauth_client_type                = var.oauth_client_type
  oauth_redirect_uri               = var.oauth_redirect_uri
  enabled                          = var.enabled
  oauth_allow_non_tls_redirect_uri = var.oauth_allow_non_tls_redirect_uri
  oauth_enforce_pkce               = var.oauth_enforce_pkce
  oauth_use_secondary_roles        = var.oauth_use_secondary_roles
  blocked_roles_list               = var.blocked_roles_list
  oauth_issue_refresh_tokens       = var.oauth_issue_refresh_tokens
  oauth_refresh_token_validity     = var.oauth_refresh_token_validity
  comment                          = var.comment

  # Optional fields (uncomment and populate if needed)
  # pre_authorized_roles_list        = []
  # network_policy                   = ""
  # oauth_client_rsa_public_key      = file("rsa.pub")
  # oauth_client_rsa_public_key_2    = file("rsa2.pub")
}