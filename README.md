# Terraform Modules

Reusable Terraform modules for cloud infrastructure — currently focused on Azure, but designed to be provider-agnostic where possible.

## 📦 Available Modules

- [`sql-server`](./sql-server): Azure SQL Server with optional firewall rules and admin login
- [`app-service`](./app-service): Azure App Service with App Settings, Plans, and deployment slots
- [`key-vault`](./key-vault): Azure Key Vault with secrets and RBAC support

## 🚀 Usage Example

```hcl
module "sql" {
  source = "git::https://github.com/<your-github-username>/terraform-modules.git//sql-server?ref=main"

  environment         = "dev"
  location            = "UK South"
  sql_admin_username  = "sqladmin"
  sql_admin_password  = var.sql_admin_password
}
```

📁 Structure
Each module:
* Resides in its own folder
* Contains a main.tf, variables.tf, outputs.tf, and README.md
* May include an examples/ directory for usage

📚 Documentation
You can auto-generate documentation using terraform-docs:

```bash
terraform-docs markdown table ./sql-server
```

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END_TF_DOCS -->