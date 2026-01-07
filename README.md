NovaTrust Bank – Cloud-Native AWS Microservices Platform
📌 Project Overview

NovaTrust Bank is a fictional cloud-native banking platform built to demonstrate real-world AWS, Kubernetes, and DevOps practices. The project focuses on Infrastructure as Code, CI/CD, GitOps, security, and observability.

⚠️ This project is for educational and portfolio purposes only.

🧰 Tech Stack

Cloud: AWS (EKS, VPC, Route53, NLB)

IaC: Terraform

CI/CD: GitHub Actions

Containers: Docker

Orchestration: Kubernetes

GitOps: ArgoCD

Ingress & TLS: NGINX Ingress, cert-manager, Let’s Encrypt

Monitoring: Prometheus, Grafana

Frontend: React (Vite)

Backend: Node.js (Express)

🏗️ Architecture

External access via HTTPS using Ingress NGINX + AWS NLB

GitOps-based application deployment using ArgoCD

Metrics and dashboards via Prometheus and Grafana

🚀 Deployment Flow

Configure GitHub Secrets and Variables

Provision infrastructure using Terraform

Deploy Kubernetes add-ons

Deploy applications via ArgoCD

Expose services using Route53 and TLS

Validate live endpoints

Destroy infrastructure to manage cost

🌐 Live Endpoints (When Active)

Frontend: https://emmaubani.online

API: https://api.emmaubani.online/health

ArgoCD: https://argocd.emmaubani.online

Grafana: https://grafana.emmaubani.online

🧹 Cost Management

All infrastructure was intentionally destroyed after validation using:

terraform destroy -auto-approve
🧠 Key Skills Demonstrated

Cloud infrastructure automation

Kubernetes production deployment

GitOps workflows

CI/CD pipelines

TLS & security best practices

Monitoring and observability

👤 Author

Ubani Obiajulum Emmanuel
Cloud / DevOps Engineer 
