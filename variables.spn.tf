variable "service_principal_name" {
  description = "The name of the service principal"
  default     = "static-web-page-spn"
}

variable "identifier_uris" {
  type        = list(string)
  description = "(Optional) A list of URIs that identify the application within its Azure AD tenant, or within a verified custom domain if the application is multi-tenant"
  default     = []
}

variable "service_principal_description" {
  description = "A description of the service principal provided for internal end-users."
  default     = "SPN for AMPE Static Web App"
}