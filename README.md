<img align="right" width="60" height="60" src="images/terraform.png">

# terraform-snowflake-oauth-integrations module

This is a repository that makes an oauth_integration with Snowflake:

- oauth_integration

Example CICD with `BitBucket` and `Codefresh`:

![Image](./images/diagram.png)

## Usage

To use the module you will need to use the following:

```hcl
module "snowflake_oauth_integration_test" {
  source  = "git::https://github.com/Richard-Barrett/terraform-snowflake-oauth-integrations.git?ref=1.0.2"

  name               = "TEST"
  comment            = "TEST Comment"
  oauth_client_type  = "CONFIDENTIAL"
  oauth_redirect_uri = "https://example.com/callback"
}
```

Required Values:

| Values         |
|----------------|
| name |
| comment |
| oauth_client_type |
| oauth_redirect_uri |

## Overview

In overview, this repository acts as a digestible module that allows you to create oauth_integrations in Terraform for Snowflake.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.6 |
| <a name="requirement_snowflake"></a> [snowflake](#requirement\_snowflake) | >= 1.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_snowflake"></a> [snowflake](#provider\_snowflake) | >= 1.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [snowflake_oauth_integration_for_custom_clients.this](https://registry.terraform.io/providers/Snowflake-Labs/snowflake/latest/docs/resources/oauth_integration_for_custom_clients) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_blocked_roles_list"></a> [blocked\_roles\_list](#input\_blocked\_roles\_list) | List of blocked roles. | `list(string)` | <pre>[<br>  "SYSADMIN"<br>]</pre> | no |
| <a name="input_comment"></a> [comment](#input\_comment) | The value of the comment field for the OAuth integration. | `string` | n/a | yes |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Flag to enable or disable the resource. | `bool` | `true` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the OAuth integration. | `string` | n/a | yes |
| <a name="input_oauth_allow_non_tls_redirect_uri"></a> [oauth\_allow\_non\_tls\_redirect\_uri](#input\_oauth\_allow\_non\_tls\_redirect\_uri) | Allow non-TLS redirect URIs. | `bool` | `true` | no |
| <a name="input_oauth_client_type"></a> [oauth\_client\_type](#input\_oauth\_client\_type) | The type of OAuth client (e.g., CONFIDENTIAL). | `string` | `"CONFIDENTIAL"` | no |
| <a name="input_oauth_enforce_pkce"></a> [oauth\_enforce\_pkce](#input\_oauth\_enforce\_pkce) | Enforce PKCE for OAuth. | `bool` | `true` | no |
| <a name="input_oauth_issue_refresh_tokens"></a> [oauth\_issue\_refresh\_tokens](#input\_oauth\_issue\_refresh\_tokens) | Flag to determine if refresh tokens should be issued. | `bool` | `true` | no |
| <a name="input_oauth_redirect_uri"></a> [oauth\_redirect\_uri](#input\_oauth\_redirect\_uri) | The OAuth redirect URI. | `string` | `"https://example.com/callback"` | no |
| <a name="input_oauth_refresh_token_validity"></a> [oauth\_refresh\_token\_validity](#input\_oauth\_refresh\_token\_validity) | The validity period of the OAuth refresh token. | `number` | `3600` | no |
| <a name="input_oauth_use_secondary_roles"></a> [oauth\_use\_secondary\_roles](#input\_oauth\_use\_secondary\_roles) | Use secondary roles for OAuth. | `string` | `"NONE"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
