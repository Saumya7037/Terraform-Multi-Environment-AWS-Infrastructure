# ☁️ Multi-Environment AWS Infrastructure Automation using Terraform

Reusable, modular Terraform configuration that provisions AWS infrastructure as code (IaC) across **Development, Staging, and Production** environments — built to eliminate manual setup effort and keep environments consistent.

## 🛠️ Tech Stack
`Terraform` `AWS EC2` `AWS S3` `AWS DynamoDB` `VPC` `Security Groups` `Linux` `Git`

## 🚀 What This Project Does

This project automates the provisioning of core AWS infrastructure using Infrastructure as Code, structured with a reusable Terraform module so the same configuration can be deployed consistently across multiple environments.

- **Reusable Terraform module** — core infrastructure logic built once inside `terraform-module/`, reused across environments
- **Automated resource provisioning** — EC2 instances, S3 buckets, and DynamoDB tables provisioned automatically, reducing manual infrastructure setup effort
- **Environment-specific configuration** — Terraform variables drive environment-specific deployments, improving flexibility, consistency, and reusability
- **Secure access control** — AWS Security Groups and Key Pairs implemented to enforce secure access and resource management
- **State locking** — `.terraform.lock.hcl` ensures consistent provider versions across every environment deployment

## 📁 Project Structure

```text
terraform-module/     # Reusable Terraform module (EC2, S3, DynamoDB, VPC, Security Groups)
main.tf                # Root configuration calling the module
.terraform.lock.hcl    # Locked provider versions for consistent deployments
README.md
```

## ⚙️ How to Use

**Prerequisites:** Terraform installed, AWS CLI configured with valid credentials.

```bash
# Clone the repository
git clone https://github.com/Saumya7037/Terraform-Multi-Environment-AWS-Infrastructure.git
cd Terraform-Multi-Environment-AWS-Infrastructure

# Initialize Terraform
terraform init

# Preview the changes
terraform plan

# Apply the configuration
terraform apply
```

## 📌 Key Learnings

Structuring Terraform around a reusable module instead of one flat configuration made it possible to provision consistent infrastructure across environments by changing variable values rather than rewriting configuration each time. This reinforced core Infrastructure as Code principles: consistency, reduced configuration drift, and safer, faster infrastructure changes.


