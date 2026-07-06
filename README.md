# 🔐 Terraform Azure Key Vault using Variables

Create and manage Azure Key Vault using Terraform with a reusable variable-based approach.

---

## 📌 Project Overview

This project provisions the following Azure resources:

✅ Resource Group
✅ Azure Key Vault
✅ Access Policy
✅ Variable-based configuration
✅ Resource Tags
✅ Outputs for Key Vault details

This project uses Terraform variables for flexible and reusable deployments across multiple environments.

---

## ❓ Why Do We Need Azure Key Vault?

Azure Key Vault is used to securely store and manage sensitive information such as:

* Secrets
* Passwords
* API Keys
* Certificates
* Encryption Keys

Instead of hardcoding sensitive data inside applications, Key Vault provides a secure centralized storage solution.

### Benefits

🔐 Secure secret storage
🔐 Improved security
🔐 Centralized management
🔐 Access control support
🔐 Reduced exposure of sensitive data

---

## 🏗 Project Structure

```bash id="zv5sya"
terraform-azure-key-vault/
│
├── provider.tf
├── main.tf
├── variables.tf
├── terraform.tfvars
├── outputs.tf
└── .gitignore
```

---

## 📥 Input Variables

| Variable            | Description         | Type        |
| ------------------- | ------------------- | ----------- |
| resource_group_name | Resource Group Name | string      |
| location            | Azure Region        | string      |
| key_vault_name      | Key Vault Name      | string      |
| tenant_id           | Azure Tenant ID     | string      |
| object_id           | Azure Object ID     | string      |
| sku_name            | Key Vault SKU       | string      |
| tags                | Resource Tags       | map(string) |

---

## 📤 Outputs

| Output         | Description           |
| -------------- | --------------------- |
| key_vault_id   | Key Vault Resource ID |
| key_vault_name | Key Vault Name        |
| vault_uri      | Key Vault URI         |

---

## ▶️ Deployment Steps

### Initialize Terraform

```bash id="pvh5ar"
terraform init
```

### Validate Configuration

```bash id="3av8r4"
terraform validate
```

### Review Execution Plan

```bash id="5s0f8w"
terraform plan
```

### Deploy Resources

```bash id="4t1oxn"
terraform apply
```

Type:

```bash id="w7g46q"
yes
```

---

## 🧹 Destroy Resources

```bash id="0bhgxu"
terraform destroy
```

---

## 📚 Terraform Concepts Used

* Variables
* Resource Blocks
* Access Policy
* Outputs
* AzureRM Provider
* Tags

---

## 🌟 Advantages of this Project

✔ Reusable code
✔ Easy customization
✔ Secure secret management
✔ Beginner-friendly structure
✔ Production-ready approach

---

## 👨‍💻 Author

**Ranjeet Kumar**

DevOps Engineer | Azure | Terraform | Kubernetes | CI/CD

---

⭐ If you found this project useful, give it a star on GitHub.


