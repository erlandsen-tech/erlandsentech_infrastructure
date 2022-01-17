variable "ARM_CLIENT_SECRET" {
  type        = string
  description = "Azure Service Principal Secret"
  default     = null
}

variable "ARM_CLIENT_ID" {
  type        = string
  description = "Azure Service Principal ID"
}

variable "ARM_TENANT_ID" {
  type        = string
  description = "TenantId of the Azure AD Tenant"
}

variable "ARM_SUBSCRIPTION_ID" {
  type        = string
  description = "Subscription ID of the target Azure Subscription"
}