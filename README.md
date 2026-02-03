# Terraform AWS EC2 Project

This project demonstrates how to launch an EC2 instance on AWS using Terraform.

## Tools Used
- Terraform
- AWS CLI
- Visual Studio Code
- Windows (PowerShell)

## IAM Setup
- Created an IAM **user** (used as a role for automation)
- Attached the following policies:
  - AmazonEC2FullAccess
  - IAMReadOnlyAccess
- Generated **Access Key** and **Secret Key**
- Used these credentials to configure AWS CLI

## Local Setup
- Installed AWS CLI and Terraform on Windows
- Configured AWS CLI using:
  aws configure

## Terraform Structure
Terraform code is written using **HCL (HashiCorp Configuration Language)** and split into:

- `provider.tf` – AWS provider configuration (Mumbai region)
- `variables.tf` – Input variables
- `main.tf` – EC2 instance and Security Group
- `outputs.tf` – Output values

## Infrastructure Created
- EC2 instance (`t3.micro`)
- Amazon Linux 2 AMI
- Security Group allowing SSH (port 22)
- Existing EC2 key pair
- Region: ap-south-1 (Mumbai)

## Terraform Workflow
```bash
terraform init #to initialize Terraform code
terraform plan #plan
terraform apply --auto-approve #auto approve to cut down the manual approval
terraform destroy --auto-approve #To Destroy automatically
