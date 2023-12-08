variable "org" {
  description = "Org name"
  type        = string
}

variable "project" {
  description = "project"
  type        = string
}

variable "project_prefix" {
  type        = string
  description = "(Optional) The prefix which should be used for all resources in this example. Defaults to burrito."
}

variable "workspace" {
  description = "workspace"
  type        = string
}

variable "environment" {
  description = "The name of the environment (ex. DEV, STAGING, PROD)"
  type        = string
}

variable "environment_version" {
  type        = string
  description = "(Required) Update to force a change."
}

variable "state_resource_group_name" {
  type        = string
  description = "(Required) Update to force a change."
}

variable "state_storage_account_name" {
  type        = string
  description = "(Required) Update to force a change."
}

variable "state_container_name" {
  type        = string
  description = "(Required) Update to force a change."
}

variable "state_key" {
  type        = string
  description = "(Required) Update to force a change."
}

variable "state_access_key" {
  type        = string
  description = "(Required) Update to force a change."
}

variable "STATE_DEV_RESOURCE_GROUP_NAME" {
  type        = string
  description = "(Required) Update to force a change."
}

variable "STATE_DEV_STORAGE_ACCOUNT_NAME" {
  type        = string
  description = "(Required) Update to force a change."
}

variable "STATE_DEV_CONTAINER_NAME" {
  type        = string
  description = "(Required) Update to force a change."
}

variable "STATE_DEV_KEY" {
  type        = string
  description = "(Required) Update to force a change."
}

variable "resource_group_version" {
  type        = string
  description = "(Required) Update to force a change."
  default     = "108"
}

variable "resource_group_prefix" {
  type        = string
  description = "(Required) Update to force a change."
  default     = "rg"
}

variable "resource_group_location" {
  type        = string
  description = "(Required) Update to force a change."
  default     = "east us"
}

variable "resource_group_location_country_code" {
  type        = string
  description = "(Required) Update to force a change."
  default     = "US"
}

variable "resource_group_data_residency_location" {
  type        = string
  description = "(Required) Update to force a change."
  default     = "United States"
}

locals {
  resource_group_name    = "${var.project_prefix}-${var.environment}-${var.environment_version}-${var.resource_group_prefix}-${var.resource_group_version}"
  resource_group_location = "${var.resource_group_location}"
  resource_group_location_country_code = "${var.resource_group_location_country_code}"
  resource_group_data_residency_location = "${var.resource_group_data_residency_location}"
  # state_resource_group_namelc   = var.state_resource_group_name
  # storage_account_namelc  = var.state_storage_account_name
  # container_namelc        = var.state_container_name
  # keylc                   = var.state_key
  # access_keylc            = var.state_access_key
}