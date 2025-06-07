# Snowflake RBAC Provisioning with Terraform

This project implements a fully automated **Role-Based Access Control (RBAC)** architecture for Snowflake using **Terraform** and **HashiCorp Configuration Language (HCL)**. It enables scalable, secure, and auditable access management for data platforms by declaratively defining and provisioning databases, schemas, roles, warehouses, and privileges.

- [Project Video](https://www.linkedin.com/feed/update/urn:li:activity:7328699160159801344/)
---

## 🔧 Technologies & Tools Used

- **Snowflake** – Cloud Data Warehouse platform  
- **Terraform** – Infrastructure as Code (IaC) tool  
- **HCL (HashiCorp Configuration Language)** – Declarative configuration syntax for Terraform  
- **Git & GitHub** – Version control and repository hosting  
- **Snowflake Provider for Terraform** – snowflakedb/snowflake; version -> "2.0.0"

---

## ⚙️ How It Works

- **Multiple Providers**: Uses aliased Snowflake providers for SYSADMIN and SECURITYADMIN to separate concerns.  
- **Data Modeling**: Database and warehouse configs are defined via `locals.tf`, making the setup scalable and easy to update.  
- **Role Architecture**: Creates both account-level roles and database-specific roles to implement least-privilege access.  
- **Grants Management**: Applies privileges like USAGE, MONITOR, SELECT, CREATE SCHEMA, etc., using reusable Terraform blocks.  

---

## 💼 Real World Use Cases

- **Enterprise Data Platforms**: Automate complex RBAC policies across multiple teams and departments.  
- **Data Governance**: Enforce secure and compliant access boundaries using Infrastructure-as-Code.  
- **Multi-Environment Deployments**: Reuse the same codebase to deploy RBAC setups for dev, staging, and prod environments.  
- **Collaboration**: Improve visibility and control for DataOps, Security, and Engineering teams through Git-based workflows.  

---

## 🔒 Security Considerations

- The `terraform.tfvars` file is excluded from Git via `.gitignore` to protect sensitive credentials.  
- It’s recommended to move secrets to a secure secret manager (e.g., AWS Secrets Manager, Vault) for production use.  

---

## 🚀 Getting Started

**Clone the repository**

**Update terraform.tfvars with your Snowflake account details.**

**Initialize Terraform:**
- terraform init

**Plan and apply the configuration:**
- terraform plan
- terraform apply

---

📬 Contact
For any questions, feel free to reach out or open an issue in the repository.

- [My LinkedIn](https://www.linkedin.com/in/shiveksharma/)

