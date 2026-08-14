# Multi-Environment AWS Infrastructure Automation using Terraform

This project demonstrates how to provision and manage AWS infrastructure using **Terraform Infrastructure as Code (IaC)**.

The infrastructure is designed to support multiple environments such as **Development, Staging, and Production** using reusable Terraform configurations, variables, and modular components.

## 🚀 Project Overview

The goal of this project is to automate AWS infrastructure provisioning and reduce manual configuration.

Terraform is used to provision and manage:

- Amazon EC2
- Amazon S3
- Amazon DynamoDB
- Amazon VPC
- AWS Security Groups
- EC2 Key Pairs

The project follows Infrastructure as Code principles to provide **consistent, repeatable, and maintainable infrastructure deployments**.

## 🛠️ Tech Stack

- **Terraform**
- **AWS**
  - EC2
  - S3
  - DynamoDB
  - VPC
  - Security Groups
- **Linux**
- **Git & GitHub**

## 🏗️ Architecture

```text
                    ┌─────────────────────┐
                    │      Terraform      │
                    │    Configuration    │
                    └──────────┬──────────┘
                               │
                               ▼
                    ┌─────────────────────┐
                    │     AWS Provider    │
                    └──────────┬──────────┘
                               │
             ┌─────────────────┼─────────────────┐
             │                 │                 │
             ▼                 ▼                 ▼
        ┌─────────┐       ┌─────────┐       ┌───────────┐
        │   VPC   │       │   EC2   │       │    S3     │
        └─────────┘       └─────────┘       └───────────┘
             │
             ▼
        ┌──────────────┐
        │Security Group│
        └──────────────┘

                    ┌──────────────┐
                    │  DynamoDB    │
                    └──────────────┘
