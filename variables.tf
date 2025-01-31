# Alphabetized variables
variable "blocked_roles_list" {
  type        = list(string)
  description = "List of blocked roles."
  default     = ["SYSADMIN"]
}

variable "comment" {
  type        = string
  description = "The value of the comment field for the OAuth integration."
}

variable "enabled" {
  type        = bool
  description = "Flag to enable or disable the resource."
  default     = true
}

variable "name" {
  type        = string
  description = "The name of the OAuth integration."
}

variable "oauth_allow_non_tls_redirect_uri" {
  type        = bool
  description = "Allow non-TLS redirect URIs."
  default     = true
}

variable "oauth_client_type" {
  type        = string
  description = "The type of OAuth client (e.g., CONFIDENTIAL)."
  default     = "CONFIDENTIAL"
}

variable "oauth_enforce_pkce" {
  type        = bool
  description = "Enforce PKCE for OAuth."
  default     = true
}

variable "oauth_issue_refresh_tokens" {
  type        = bool
  description = "Flag to determine if refresh tokens should be issued."
  default     = true
}

variable "oauth_redirect_uri" {
  type        = string
  description = "The OAuth redirect URI."
  default     = "https://example.com/callback"
}

variable "oauth_refresh_token_validity" {
  type        = number
  description = "The validity period of the OAuth refresh token."
  default     = 3600
}

variable "oauth_use_secondary_roles" {
  type        = string
  description = "Use secondary roles for OAuth."
  default     = "NONE"
}
