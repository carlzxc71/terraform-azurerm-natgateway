variable "existing_rg_name" {
  description = "value for the name of an existing resource group"
  type        = string
  nullable    = false
}
variable "nat_gw_name" {
  description = "value for the name of the nat gateway"
  type        = string
  default     = "nat-Gateway"

}

variable "nat_gw_sku_name" {
  description = "value for the sku name of the nat gateway"
  type        = string
  default     = "Standard"

}

variable "pip_sku_name" {
  description = "value for the sku name of the public IP"
  type        = string
  default     = "Standard"

}

variable "location" {
  description = "value for the location of the nat gateway"
  type        = string
  default     = "West Europe"

}

variable "pip_name" {
  description = "value for the name of the public ip"
  type        = string
  default     = "pip-nat-gateway"
}