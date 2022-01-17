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

  validation {
    condition     = can(regex("^[a-f0-9-]{36}$", var.tenant_id))
    error_message = "The tenant_id does not follow the format ffffffff-ffff-ffff-ffff-ffffffffffff."
  }
}

variable "ARM_SUBSCRIPTION_ID" {
  type        = string
  description = "Subscription ID of the target Azure Subscription"

  validation {
    condition     = can(regex("^[a-f0-9-]{36}$", var.subscription_id))
    error_message = "The subscription_id does not follow the format ffffffff-ffff-ffff-ffff-ffffffffffff."
  }
}