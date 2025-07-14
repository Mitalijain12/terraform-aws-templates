# EC2 Instance with Tags (Terraform)

This module launches a Free Tier EC2 instance using Terraform with:
- Amazon Linux 2 AMI
- `t2.micro` instance
- 8GB gp2 EBS volume
- Tags: Name, Group, Env

## Commands to Run

```bash
terraform init
terraform apply
