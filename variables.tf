variable "name" {
    type        = string
    description = "The name of the OAuth integration."
  }

  variable "oauth_client" {
    type        = string
    description = "The OAuth client."
  }

  variable "enabled" {
    type        = bool
    description = "Flag to enable or disable the resource."
    default     = true
  }

  variable "oauth_issue_refresh_tokens" {
    type        = bool
    description = "Flag to determine if refresh tokens should be issued."
    default     = true
  }

  variable "oauth_refresh_token_validity" {
    type        = number
    description = "The validity period of the OAuth refresh token."
    default     = 3600
  }

  variable "blocked_roles_list" {
    type        = list(string)
    description = "List of blocked roles."
    default     = ["SYSADMIN"]
  }

  variable "oauth_redirect_uri" {
    type    = string
    default = "https://example.com/callback"
  }

  variable "comment" {
    type = string
    description = "The value of the comment field for the OAuth integration."
  }

# Path: outputs.tf