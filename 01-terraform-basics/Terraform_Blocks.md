# 📦 Terraform Blocks – Overview

In **Terraform**, a **block** is the fundamental unit of configuration. All Terraform configuration files (`.tf`) are made up of blocks that define **what Terraform should do** and **how** it should interact with external systems.

---

## 🧱 What is a Block?

A **block** in Terraform:
- Begins with a **block type** (like `resource`, `provider`, `variable`, etc.)
- Can include one or more **labels**
- Contains **arguments** (key-value pairs)
- May also contain **nested blocks**

### 🔹 Syntax of a Block

```hcl
block_type "label1" "label2" {
  argument_name = argument_value

  nested_block {
    ...
  }
}



Example:
resource "azurerm_resource_group" "example" {
  name     = "my-rg"
  location = "East US"
}



🗂️ Common Types of Blocks in Terraform
Block Type	Description
terraform	Project-level settings like required providers and backend config.
provider	Defines how Terraform connects to external APIs (e.g., Azure, AWS).
resource	Describes infrastructure to be created (e.g., VMs, Storage Accounts).
variable	Declares input parameters to make the config dynamic.
output	Defines values to be displayed after deployment (e.g., IP addresses).
module	Reuses and organizes code by referencing external or local modules.
locals	Declares local values (constants or expressions).
data	Reads existing resources without creating them (read-only access).
🔍 Example of Each Block
1. terraform block

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.37.0"
    }
  }
}

2. provider block

provider "azurerm" {
  features {}
}

3. resource block

resource "azurerm_resource_group" "main" {
  name     = "demo-rg"
  location = "East US"
}

4. variable block

variable "location" {
  type    = string
  default = "East US"
}

5. output block

output "rg_name" {
  value = azurerm_resource_group.main.name
}

6. locals block

locals {
  rg_name = "my-local-rg"
}

7. data block

data "azurerm_client_config" "current" {}

8. module block

module "network" {
  source    = "./modules/network"
  vnet_name = "demo-vnet"
}

🧠 Summary

    Terraform configurations are composed of blocks.

    Each block type has a specific purpose (defining infra, logic, settings).

    Mastering block structure and usage is essential for writing scalable, reusable infrastructure code.

