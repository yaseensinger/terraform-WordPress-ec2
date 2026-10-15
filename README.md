In this repo I used Terraform to provision the infrastructure for a WordPress website, including networking resources and an EC2 instance.


### What I Built
- AWS VPC and subnet
- Internet Gateway and route table
- Security group with inbound HTTP and outbound traffic rules
- Ubuntu EC2 instance
- User-data script to install Apache
- S3 backend for remote Terraform state

### What I Learned
-How to use Terraform to provision AWS resources.
- How VPCs, subnets, route tables and Internet Gateways work together.
- How security group inbound and outbound rules affect connectivity.
- How to organise Terraform code using modules.
- How to troubleshoot EC2 startup issues using system logs.
