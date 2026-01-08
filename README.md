# 🏦 NovaTrust Bank — Production-Grade AWS EKS Microservices Platform

Terraform • Kubernetes • GitOps • CI/CD • Observability

🟡 **Status:** Previously Live (Destroyed for Cost Management)  
🌍 **Region:** us-east-1  
🌐 **Domain:** emmaubani.online  

---

## 📜 Legal Disclaimer

**Fictional Bank Notice**

NovaTrust Bank is a fictional institution created strictly for educational and portfolio demonstration purposes.

This project does **not** represent a real bank, does **not** offer financial services, and is **not affiliated** with OPAY or any real organization.

Any resemblance to real institutions is purely coincidental.

---

## 📖 Project Overview

This project demonstrates how to design, deploy, and operate a **production-grade cloud-native microservices platform** on AWS using **Terraform**, **Amazon EKS**, and **GitOps best practices**.

The goal of this project is to simulate how modern fintech or SaaS platforms provision infrastructure, deploy applications, secure traffic, monitor systems, and manage costs in real-world cloud environments.

---

## 🚀 Core Capabilities

- Infrastructure provisioning with **Terraform**
- Kubernetes orchestration using **Amazon EKS**
- Modular Terraform design (VPC, EKS, Database, DNS)
- Secure networking with public/private subnets
- GitOps-style deployment workflows
- TLS-enabled ingress using AWS Load Balancers
- Cost-conscious infrastructure lifecycle management

---

## 🏗️ Architecture Overview

### High-Level Flow

1. Users access the platform over HTTPS
2. DNS is resolved via Amazon Route53
3. Traffic enters through an AWS Load Balancer
4. Requests are routed to workloads running in EKS
5. Backend services communicate with a private database
6. Infrastructure state is managed via Terraform

📸 **Architecture diagram:**  
See `architecture.png` in the repository root.

---

## 📁 Repository Structure

```bash
aws-three-tier-terraform-deploy/
├── module-vpc/              # VPC, subnets, routing, NAT
├── module-eks/              # EKS cluster and node groups
├── module-database/         # RDS database resources
├── module-dns/              # Route53 DNS configuration
├── docker-git-runner-setup/ # CI/CD runner setup
├── main.tf                  # Root Terraform configuration
├── backend.tf               # Remote state backend
├── variables.tf             # Input variables
├── terraform.tfvars         # Environment-specific values
├── output.tf                # Terraform outputs
├── architecture.png         # Architecture diagram
└── README.md                # Project documentation

🔐 Security & Best Practices

IAM roles following least-privilege principles

Private subnets for compute and database layers

No hard-coded secrets in source code

Terraform remote backend for state management

Modular, reusable Terraform components

Infrastructure destroyed after validation to reduce cost

⚙️ Infrastructure Provisioning Workflow
Initialize Terraform
terraform init

Validate Configuration
terraform fmt -recursive
terraform validate

Plan Deployment
terraform plan

Apply Infrastructure
terraform apply -auto-approve

☁️ AWS Resources Provisioned

VPC with public and private subnets

Internet Gateway & NAT Gateway

Amazon EKS cluster

Managed node groups

Amazon RDS (private networking)

Route53 hosted zone

IAM roles and policies

🧹 Cost Management

After validating the deployment and documenting outcomes, all infrastructure was intentionally destroyed to prevent unnecessary AWS charges.

terraform destroy -auto-approve

📚 What I Learned

Designing production-ready AWS architectures

Writing clean, modular Terraform code

Managing Kubernetes infrastructure with EKS

Secure cloud networking patterns

Infrastructure lifecycle and cost optimization

Presenting real-world cloud projects professionally

👨🏽‍💻 Author

Ubani Obiajulum Emmanuel
Cloud & DevOps Engineer (in training)

🔗 GitHub: https://github.com/Eaglewings966/aws-three-tier-terraform-deploy.git

⭐ Final Note

This repository showcases hands-on DevOps and cloud engineering practice, focusing on real-world infrastructure design, security, and operational discipline rather than theory.

Built, validated, documented, and responsibly destroyed — the professional way.