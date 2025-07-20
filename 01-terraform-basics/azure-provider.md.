# 🌐 Terraform Azure Provider – Overview

## 📌 What is a Provider?

In Terraform, a **provider** is a plugin that allows Terraform to interact with external APIs—like cloud platforms, SaaS services, etc.

The **Azure Provider (`azurerm`)** enables Terraform to manage **Azure resources** such as Virtual Machines, Storage Accounts, Virtual Networks, Key Vaults, and more.

---

## 🔧 How the Azure Provider Works

1. **Terraform Configuration (`.tf` files)**  
   You define Azure infrastructure using HCL (HashiCorp Configuration Language):

   ```hcl
   provider "azurerm" {
     features {}
   }

   resource "azurerm_resource_group" "example" {
     name     = "rg-example"
     location = "East US"
   }

   ## 🔐 Authentication with Azure

Terraform must authenticate with Azure to create and manage resources. Common authentication methods include:

- **Azure CLI**  
  Use when running Terraform locally. Automatically picks up credentials from a logged-in Azure CLI session.

- **Service Principal (Client ID + Secret)**  
  Best for automation and CI/CD pipelines. Requires creating an app registration in Azure AD and granting it appropriate permissions.

- **Managed Identity**  
  Ideal for Terraform runs inside Azure environments (e.g., Azure DevOps agents, virtual machines). Requires enabling a system-assigned or user-assigned identity.

---

## ⚙️ Terraform Lifecycle Commands

- `terraform init`  
  Initializes the working directory and downloads the required provider plugins.

- `terraform plan`  
  Previews the changes Terraform will make without applying them. Helps verify before deployment.

- `terraform apply`  
  Applies the planned infrastructure changes to your Azure environment.

- `terraform destroy`  
  Destroys all managed resources defined in the current Terraform configuration.

---

## 🌐 How Terraform Communicates with Azure

The **Azure provider** translates Terraform configuration into **Azure Resource Manager (ARM) REST API calls**.  
This means every `terraform apply` action sends authenticated REST requests to Azure, creating, updating, or deleting resources in real-time.
