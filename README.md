markdown
# ☁️ Multi-Environment AWS Infrastructure Automation using Terraform

Reusable, modular Terraform configuration that provisions AWS infrastructure as code (IaC) across **Development, Staging, and Production** environments — built to eliminate manual setup effort and keep environments consistent.

## 🛠️ Tech Stack
`Terraform` `AWS EC2` `AWS S3` `AWS DynamoDB` `VPC` `Security Groups` `Linux` `Git`

## 🚀 What This Project Does

This project automates the provisioning of core AWS infrastructure using Infrastructure as Code, structured so the same modules can be reused across three separate environments without duplicating configuration.

- **Reusable, modular Terraform modules** — built once, reused across Development, Staging, and Production environments
- **Automated resource provisioning** — EC2 instances, S3 buckets, and DynamoDB tables provisioned automatically, reducing manual infrastructure setup effort
- **Environment-specific configuration** — Terraform variables drive environment-specific deployments, improving flexibility, consistency, and reusability across environments
- **Secure access control** — AWS Security Groups and Key Pairs implemented to enforce secure access and resource management
- **Modular, maintainable structure** — configurations broken into reusable components to support scalable infrastructure deployment

## 📁 Project Structure

├── modules/
│ ├── ec2/ # Reusable EC2 provisioning module
│ ├── s3/ # Reusable S3 bucket module
│ └── dynamodb/ # Reusable DynamoDB table module
├── environments/
│ ├── dev/ # Development environment configuration
│ ├── staging/ # Staging environment configuration
│ └── prod/ # Production environment configuration
├── variables.tf
├── outputs.tf
└── README.md


## ⚙️ How to Use

**Prerequisites:** Terraform installed, AWS CLI configured with valid credentials.

```bash
# Clone the repository
git clone https://github.com/Saumya7037/Terraform-Multi-Environment-AWS-Infrastructure.git
cd Terraform-Multi-Environment-AWS-Infrastructure

# Navigate to the environment you want to deploy
cd environments/dev

# Initialize Terraform
terraform init

# Preview the changes
terraform plan

# Apply the configuration
terraform apply
```

Repeat the same steps inside `environments/staging` or `environments/prod` to provision those environments — the underlying modules stay identical, only the variable values change per environment.

## 📌 Key Learnings

Structuring Terraform into reusable modules instead of one flat configuration file made it possible to spin up identical infrastructure across three environments just by changing variable values, rather than rewriting configuration each time. This reinforced core Infrastructure as Code principles: consistency across environments, reduced configuration drift, and faster, safer infrastructure changes.

## 📄 License

This project is licensed under the MIT License — see the `LICENSE` file for details.
Scroll down, Commit changes

A couple of quick follow-ups worth doing right after this:

Add a LICENSE file if you don't have one yet: Add file → Create new file → filename LICENSE → GitHub will show "Choose a license template" → pick MIT → Commit
Set description + topics: click the ⚙️ gear icon next to "About" on the repo homepage → description: Modular Terraform configuration for multi-environment AWS infrastructure automation → topics: terraform, aws, iac, devops, cloud
