variable subscription_id {
  description = "The ID of the Azure subscription where the resources will be created."
  type        = string
  default     = ""
} 

variable "name" {
  description = "The name of the resource group."
  type        = string
  default     = "myResourceGroup"
}

variable "location" {
    description = "value for the location of the resource group."
    type = string
    default = "East US"
  
}