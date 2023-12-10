variable "state_resource_group_name" {
  type        = string
  description = "(Required) Update to force a change."
  default     = "Assetronai-dev-101-rg-108"
}

variable "state_storage_account_name" {
  type        = string
  description = "(Required) Update to force a change."
  default     = "sa110"
}

variable "state_container_name" {
  type        = string
  description = "(Required) Update to force a change."
  default     = "sacon100"
}

variable "state_key" {
  type        = string
  description = "(Required) Update to force a change."
  default     = "state103.tfstate"
}

variable "state_file_name" {
  type        = string
  description = "(Required) Update to force a change."
  default     = "state103.tfstate"
}