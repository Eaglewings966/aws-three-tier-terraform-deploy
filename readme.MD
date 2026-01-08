🏦 NovaTrust Bank Microservice Platform
Production-Grade AWS EKS Deployment with Terraform & GitOps








🟡 Status: Previously Live → 🔴 Destroyed (Cost Management)
🌍 Region: us-east-1
🌐 Domain: emmaubani.online

📜 Legal Disclaimer

Fictional Bank Notice
NovaTrust Bank is a fictional institution created strictly for educational and portfolio demonstration purposes.

This project does not represent a real bank, does not offer financial services, and is not affiliated with OPAY or any organization.

Any resemblance to real institutions is purely coincidental.

📖 Project Overview

This project demonstrates how to design, deploy, and operate a production-grade cloud-native microservices platform on AWS using Infrastructure as Code, GitOps, and Kubernetes best practices.

Core Capabilities

AWS infrastructure provisioned with Terraform

Kubernetes workloads running on Amazon EKS

GitHub Actions for CI/CD automation

ArgoCD for GitOps continuous delivery

Ingress NGINX + AWS NLB for traffic management

cert-manager + Let’s Encrypt for HTTPS/TLS

Prometheus & Grafana for observability

React frontend and Node.js backend API

Route53 DNS management

🧩 Naming Conventions
Component	Value
EKS Cluster	novatrust-eks-prod
Namespace	novatrust
Backend	novatrust-api
Frontend	novatrust-web
ArgoCD	argocd.emmaubani.online
Grafana	grafana.emmaubani.online
API	api.emmaubani.online
🏗️ Architecture Overview

Traffic Flow

Users access the platform over HTTPS.

Route53 resolves DNS to an External NLB created by Ingress NGINX.

Traffic is routed to:

React frontend

Backend API

Backend communicates with RDS MySQL (Multi-AZ).

Internal NLB enables private service communication.

ArgoCD synchronizes deployments from GitHub.

Prometheus and Grafana monitor the cluster.

📸 Architecture diagram available in /docs or screenshots

📁 Repository Structure
.
├── .github/workflows/
│   └── cicd.yml
├── terraform/
│   ├── vpc/
│   ├── eks/
│   ├── rds/
│   └── route53/
├── apps/
│   ├── backend/
│   └── frontend/
├── k8s/
│   ├── namespace.yaml
│   ├── backend.yaml
│   ├── frontend.yaml
│   ├── ingress-option1-subdomains.yaml
│   ├── internal-nlb.yaml
│   ├── argocd-ingress.yaml
│   └── grafana-ingress.yaml
├── argocd/
│   └── novatrust-app.yaml
└── README.md

🔐 Phase 0 — Repository Cleanup

Forked original repository

Removed old branding and secrets

Standardized naming

Added secure .gitignore

git grep -n "AKIA\|SECRET\|example.com" || true

🔑 Phase 1 — GitHub Secrets & Variables
Secrets

AWS_ACCESS_KEY_ID

AWS_SECRET_ACCESS_KEY

AWS_REGION

Variables

EKS_CLUSTER_NAME = novatrust-eks-prod

⚙️ Phase 2 — CI/CD with GitHub Actions

CI pipeline performs:

Terraform init

Format check

Validation

Plan

Apply

terraform init
terraform fmt -recursive
terraform validate
terraform apply -auto-approve

☁️ Phase 3 — Infrastructure Provisioning

Provisioned using Terraform:

VPC with public/private subnets

EKS cluster

RDS MySQL (Multi-AZ)

IAM roles and policies

Route53 hosted zone

☸️ Phase 4 — Kubernetes Setup
aws eks update-kubeconfig \
  --name novatrust-eks-prod \
  --region us-east-1

kubectl get nodes

🌐 Phase 5 — Ingress NGINX (External NLB)
helm install ingress-nginx ingress-nginx/ingress-nginx \
  --namespace ingress-nginx --create-namespace \
  --set controller.service.annotations."service\.beta\.kubernetes\.io/aws-load-balancer-type"="nlb"

🔐 Phase 6 — TLS with cert-manager

cert-manager installed

Let’s Encrypt ClusterIssuer configured

Automatic certificate renewal enabled

🔄 Phase 7 — GitOps with ArgoCD

ArgoCD installed in argocd namespace

Git repository used as single source of truth

Automated sync enabled

kubectl get applications -n argocd

📊 Phase 8 — Monitoring

Prometheus for metrics collection

Grafana for visualization

Dashboards exposed securely via HTTPS

🧩 Phase 9 — Application Services
Backend API

Node.js + Express

Health endpoint: /health

Dockerized

Frontend

React (Vite)

Fetches backend health status

Served via NGINX

🐳 Phase 10 — Docker Images
docker build -t <user>/novatrust-api:1.0.0 .
docker push <user>/novatrust-api:1.0.0

docker build -t <user>/novatrust-web:1.0.0 .
docker push <user>/novatrust-web:1.0.0

☸️ Phase 11 — Kubernetes Manifests

Deployed:

Deployments

Services

Ingress (TLS)

Internal NLB

kubectl apply -f k8s/

🌐 Phase 12 — DNS (Route53)

Configured records:

emmaubani.online

api.emmaubani.online

argocd.emmaubani.online

grafana.emmaubani.online

✅ Phase 13 — Validation
curl https://emmaubani.online
curl https://api.emmaubani.online/health

🧹 Cleanup (Cost Control)
terraform destroy -auto-approve

📚 What I Learned

Building production-ready AWS EKS infrastructure

Writing clean Terraform modules

GitOps deployment workflows

Kubernetes networking & TLS

Monitoring cloud-native systems

Cost optimization strategies

Presenting real-world cloud projects professionally

👨🏽‍💻 Author

Ubani Obiajulum Emmanuel
Cloud & DevOps Engineer
🔗 GitHub: https://github.com/Eaglewings966/aws-three-tier-terraform-deploy.git

⭐ Final Note

This repository showcases real-world DevOps, Cloud, and Kubernetes engineering practices suitable for mid-level to senior cloud roles.