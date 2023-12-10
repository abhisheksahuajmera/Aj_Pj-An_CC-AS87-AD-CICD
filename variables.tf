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

variable "resource_group_version" {
  type        = string
  description = "(Required) Update to force a change."
}

variable "resource_group_prefix" {
  type        = string
  description = "(Required) Update to force a change."
}

variable "resource_group_location" {
  type        = string
  description = "(Required) Update to force a change."
}

variable "resource_group_location_country_code" {
  type        = string
  description = "(Required) Update to force a change."
}

variable "resource_group_data_residency_location" {
  type        = string
  description = "(Required) Update to force a change."
}


locals {
  resource_group_name    = "${var.project_prefix}-${var.environment}-${var.environment_version}-${var.resource_group_prefix}-${var.resource_group_version}"
  resource_group_location = "${var.resource_group_location}"
  resource_group_location_country_code = "${var.resource_group_location_country_code}"
  resource_group_data_residency_location = "${var.resource_group_data_residency_location}"
}