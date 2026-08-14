Multi-Environment AWS Infrastructure Automation using Terraform

Terraform project for provisioning and managing AWS infrastructure as
Infrastructure as Code (IaC).

The project is designed to support Development, Staging, and
Production environments using reusable Terraform configurations,
variables, and modules.

Project Overview

The goal of this project is to automate AWS infrastructure provisioning
and reduce manual configuration.

AWS Resources

Amazon EC2

Amazon S3

Amazon DynamoDB

Amazon VPC

AWS Security Groups

EC2 Key Pairs

Tech Stack

Terraform

AWS EC2

AWS S3

AWS DynamoDB

AWS VPC

AWS Security Groups

Linux

Git & GitHub

Architecture

                    Terraform
                       |
                       v
                AWS Provider
                       |
        +--------------+--------------+
        |              |              |
        v              v              v
       VPC            EC2             S3
        |
        v
   Security Group

                 DynamoDB

Project Structure

terraform-aws-infrastructure/
|
+-- modules/
|   +-- ec2/
|   +-- s3/
|   +-- dynamodb/
|   +-- vpc/
|   +-- security-group/
|
+-- environments/
|   +-- dev/
|   |   +-- main.tf
|   |   +-- variables.tf
|   |   +-- terraform.tfvars
|   |
|   +-- staging/
|   |   +-- main.tf
|   |   +-- variables.tf
|   |   +-- terraform.tfvars
|   |
|   +-- prod/
|       +-- main.tf
|       +-- variables.tf
|       +-- terraform.tfvars
|
+-- main.tf
+-- providers.tf
+-- variables.tf
+-- outputs.tf
+-- .gitignore
+-- README.md

Key Features

Infrastructure as Code

AWS resources are defined and managed using Terraform instead of manual
configuration through the AWS Console.

Multi-Environment Support

The project supports separate configurations for:

Development

Staging

Production

This allows infrastructure to be deployed consistently across different
environments.

Reusable Terraform Modules

Infrastructure components are organized into reusable modules for:

EC2

S3

DynamoDB

VPC

Security Groups

This improves code organization, reusability, and maintainability.

Environment-Specific Configuration

Terraform variables are used to customize infrastructure for different
environments.

Example:

environment  = "dev"
instance_type = "t2.micro"

Different values can be provided for staging and production without
modifying the underlying infrastructure modules.

AWS Security

AWS Security Groups and EC2 Key Pairs are configured to control access
to infrastructure resources.

Prerequisites

Before running this project, make sure you have:

Terraform installed

AWS CLI installed

Git installed

An AWS account with appropriate IAM permissions

Check Terraform:

terraform --version

Check AWS CLI:

aws --version

AWS Authentication

Configure the AWS CLI:

aws configure

You will be prompted for:

AWS Access Key ID
AWS Secret Access Key
Default Region
Output Format

Important: Never commit AWS credentials, access keys, secret keys,
or other sensitive information to GitHub.

Deployment

1. Clone the Repository

git clone <YOUR-GITHUB-REPOSITORY-URL>
cd terraform-aws-infrastructure

2. Initialize Terraform

terraform init

This initializes the Terraform working directory and downloads the
required providers.

3. Format the Configuration

terraform fmt -recursive

4. Validate the Configuration

terraform validate

5. Review the Infrastructure Plan

terraform plan

Terraform will display the resources that will be created, modified, or
destroyed.

6. Deploy the Infrastructure

terraform apply

Confirm the deployment when prompted:

yes

Destroy Infrastructure

To remove the infrastructure created by Terraform:

terraform destroy

Warning: Use this command carefully, especially when working with
production resources.

Terraform Workflow

Write Terraform Configuration
            |
            v
     terraform init
            |
            v
      terraform fmt
            |
            v
    terraform validate
            |
            v
      terraform plan
            |
            v
     terraform apply
            |
            v
    AWS Infrastructure

Learning Outcomes

Through this project, I gained practical understanding of:

Infrastructure as Code (IaC)

Terraform configuration and workflow

Terraform variables and outputs

Reusable Terraform modules

AWS infrastructure provisioning

Multi-environment infrastructure management

EC2 provisioning

S3 and DynamoDB provisioning

VPC configuration

Security Group configuration

Infrastructure automation

Git-based infrastructure management

Future Improvements

Add Terraform remote state using Amazon S3

Implement CI/CD using GitHub Actions

Add Terraform security scanning

Implement automated infrastructure testing

Add CloudWatch monitoring

Add automated Terraform plan checks for pull requests

Improve environment isolation using separate AWS accounts

Disclaimer

This project is created for learning and demonstration purposes. AWS
resources may incur charges depending on the resources and
configurations used.

Author

Saumya Kumar

Cloud & DevOps Engineer | AWS | Terraform | Docker | Kubernetes

GitHub: https://github.com/Saumya7037
