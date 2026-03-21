# Terraform Implementations

This repository contains a small set of Terraform examples for provisioning AWS EC2 resources.

## Repository Structure

- `main.tf`
  A basic EC2 example in the repository root.
- `ec2/ec2_with_vpc.tf`
  An EC2 example with a security group that allows SSH and HTTP access.
- `Modular-terraform/`
  A variable-driven Terraform example that separates input variables from infrastructure code.

## Prerequisites

- Terraform installed
- AWS account credentials with permission to create EC2 resources
- PowerShell terminal

## Configure AWS Credentials in PowerShell

Set AWS credentials as environment variables in the current PowerShell session:

```powershell
$env:AWS_ACCESS_KEY_ID="YOUR_ACCESS_KEY_ID"
$env:AWS_SECRET_ACCESS_KEY="YOUR_SECRET_ACCESS_KEY"
$env:AWS_DEFAULT_REGION="us-east-1"
```

If you are using temporary credentials, also set:

```powershell
$env:AWS_SESSION_TOKEN="YOUR_SESSION_TOKEN"
```

Verify the variables:

```powershell
Get-ChildItem Env:AWS*
```

## Running Terraform

From the folder that contains the Terraform configuration you want to use:

```powershell
terraform init
terraform plan
terraform apply
```

Destroy resources when you no longer need them:

```powershell
terraform destroy
```

## Example: Modular Terraform

The `Modular-terraform` folder uses:

- `main.tf` for provider and resource definitions
- `variables.tf` for input variable declarations
- `terraform.tfvars` for variable values

Run it with:

```powershell
cd Modular-terraform
terraform init
terraform plan
terraform apply
```

## Notes

- The AMI IDs in this repository are region-specific and may become outdated.
- `terraform.tfstate` and provider download folders are intentionally ignored from version control.
- Review security group rules carefully before applying infrastructure in a production AWS account.
