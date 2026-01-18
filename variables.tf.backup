# VPC Configuration
variable "vpc_cidrblock" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "192.168.0.0/16"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "production"
}

variable "create_subnet" {
  description = "Create subnets"
  type        = bool
  default     = true
}

variable "countsub" {
  description = "Number of subnets"
  type        = number
  default     = 2
}

variable "create_elastic_ip" {
  description = "Create Elastic IPs"
  type        = bool
  default     = true
}

# EKS Configuration
variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
  default     = "production-eks"
}

variable "desired_size" {
  description = "Node group desired size"
  type        = number
  default     = 2
}

variable "max_size" {
  description = "Node group max size"
  type        = number
  default     = 4
}

variable "min_size" {
  description = "Node group min size"
  type        = number
  default     = 1
}

variable "instance_types" {
  description = "Instance types"
  type        = list(string)
  default     = ["t3.medium"]
}

variable "capacity_type" {
  description = "Capacity type"
  type        = string
  default     = "ON_DEMAND"
}

variable "eks_version" {
  description = "EKS version"
  type        = string
  default     = "1.28"
}

variable "ami_type" {
  description = "AMI type"
  type        = string
  default     = "AL2_x86_64"
}

variable "label_one" {
  description = "Node label"
  type        = string
  default     = "system"
}

# Application Configuration
variable "domain_name" {
  description = "Domain name"
  type        = string
}

variable "email" {
  description = "Email for certificates"
  type        = string
}

variable "repository_name" {
  description = "ECR repository name"
  type        = string
  default     = "app-repository"
}

# Database Configuration
variable "db_instance_class" {
  description = "DB instance class"
  type        = string
  default     = "db.t3.micro"
}

variable "db_allocated_storage" {
  description = "DB storage (GB)"
  type        = number
  default     = 20
}

variable "db_username" {
  description = "DB username"
  type        = string
  default     = "admin"
}

variable "db_password" {
  description = "DB password"
  type        = string
  sensitive   = true
}

variable "db_name" {
  description = "Database name"
  type        = string
  default     = "appdb"
}

# DNS Configuration
variable "create_dns_records" {
  description = "Create DNS records"
  type        = bool
  default     = true
}

# AWS Configuration
variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}