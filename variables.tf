variable "org" {
  description = "Org name"
  type        = string
  default     = ""
}

variable "project" {
  description = "project"
  type        = string
  default     = ""
}

variable "project_prefix" {
  type        = string
  description = "(Optional) The prefix which should be used for all resources in this example. Defaults to burrito."
  default     = ""
}

variable "workspace" {
  description = "workspace"
  type        = string
  default     = ""
}

variable "environment" {
  description = "The name of the environment (ex. DEV, STAGING, PROD)"
  type        = string
  default     = ""
}

variable "environment_version" {
  type        = string
  description = "(Required) Update to force a change."
  default     = ""
}

variable "state_resource_group_name" {
  type        = string
  description = "(Required) Update to force a change."
  default     = ""
}

variable "state_storage_account_name" {
  type        = string
  description = "(Required) Update to force a change."
  default     = ""
}

variable "state_container_name" {
  type        = string
  description = "(Required) Update to force a change."
  default     = ""
}

variable "state_key" {
  type        = string
  description = "(Required) Update to force a change."
  default     = ""
}

variable "state_access_key" {
  type        = string
  description = "(Required) Update to force a change."
  default     = ""
}

variable "resource_group_version" {
  type        = string
  description = "(Required) Update to force a change."
  default     = ""
}

variable "resource_group_prefix" {
  type        = string
  description = "(Required) Update to force a change."
  default     = ""
}

variable "resource_group_location" {
  type        = string
  description = "(Required) Update to force a change."
  default     = ""
}

variable "resource_group_location_country_code" {
  type        = string
  description = "(Required) Update to force a change."
  default     = ""
}

variable "resource_group_data_residency_location" {
  type        = string
  description = "(Required) Update to force a change."
  default     = "" 
}

locals {
  resource_group_name    = "${var.project_prefix}-${var.environment}-${var.environment_version}-${var.resource_group_prefix}-${var.resource_group_version}"
  resource_group_location = "${var.resource_group_location}"
  resource_group_location_country_code = "${var.resource_group_location_country_code}"
  resource_group_data_residency_location = "${var.resource_group_data_residency_location}"
}