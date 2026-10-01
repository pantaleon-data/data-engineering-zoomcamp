# Terraform Infrastructure

## Background & Overview

This project uses Terraform to define and manage cloud infrastructure for the New York City Taxi Data Engineering project.

The Terraform configuration demonstrates how **Infrastructure as Code (IaC)** can be used to provision and manage data engineering resources consistently through configuration files, rather than creating resources manually through the Google Cloud Console.

The infrastructure is designed around two core components:

- **Google Cloud Storage** — serves as the data lake for NYC Taxi data
- **Google BigQuery** — serves as the analytical data warehouse

> **Note:** The GCP resources in this project require an active billing account. The Terraform configuration is retained as part of the learning project even when cloud resources cannot be provisioned due to billing restrictions.

## Project Structure

```text
02-terraform/
├── main.tf
├── variables.tf
├── outputs.tf
├── versions.tf
├── terraform.tfvars
└── README.md
```

## File Responsibilities

| File | Purpose |
|---|---|
| `main.tf` | Defines the Google Cloud infrastructure resources |
| `variables.tf` | Declares configurable Terraform input variables |
| `terraform.tfvars` | Provides values for the input variables |
| `outputs.tf` | Defines values Terraform exposes after deployment |
| `versions.tf` | Defines Terraform provider requirements |
| `README.md` | Documents the Terraform project |

## Technical Stack

- Terraform
- Google Cloud Platform (GCP)
- Google Cloud Storage
- Google BigQuery
- Git and GitHub
- GitHub Codespaces

## Infrastructure

### Google Cloud Storage

A Google Cloud Storage bucket is defined as the project’s data lake.

```text
NYC Taxi Data
      ↓
Google Cloud Storage
      ↓
Data Lake
```

The bucket is configured with uniform bucket-level access.

### Google BigQuery

A BigQuery dataset is defined as the analytical data warehouse.

```text
NYC Taxi Data
      ↓
BigQuery
      ↓
Analytical Queries
```

The dataset is configured to use the same `US` location as the storage bucket.

## Terraform Workflow

The project follows the standard Terraform workflow:

```bash
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
```

### `terraform init`

Initializes the Terraform working directory and downloads the required provider.

### `terraform fmt`

Formats Terraform configuration files according to Terraform’s standard formatting conventions.

### `terraform validate`

Checks whether the Terraform configuration is syntactically valid and internally consistent.

### `terraform plan`

Creates an execution plan showing what Terraform intends to create, modify, or destroy.

### `terraform apply`

Applies the execution plan and creates or modifies the infrastructure.

## Key Terraform Concepts Practiced

This project is used to develop practical understanding of:

- Infrastructure as Code
- Terraform providers
- Terraform resources
- Input variables
- Terraform outputs
- Provider version constraints
- Terraform state
- Terraform execution plans
- Resource dependencies
- Configuration management
- Infrastructure lifecycle management

## Security

Credentials and sensitive configuration should never be committed to the repository.

Terraform state files, local Terraform directories, credential files, and sensitive variable files are excluded through `.gitignore` where appropriate.

The project is intended to demonstrate infrastructure configuration while keeping authentication credentials separate from source-controlled code.