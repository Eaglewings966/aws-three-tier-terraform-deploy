variable "enabled" {
  description = "Enable DNS outputs"
  type        = bool
  default     = true
}

variable "domain_name" {
  description = "Domain name"
  type        = string
}

variable "eks_endpoint" {
  description = "EKS cluster endpoint"
  type        = string
  default     = ""
}

variable "environment" {
  description = "Environment"
  type        = string
}

variable "nginx_ingress_lb_dns" {
  description = "DNS name of the NGINX Ingress Load Balancer"
  type        = string
  default     = ""
}

variable "nginx_lb_ip" {
  description = "IP address of the NGINX Ingress Load Balancer"
  type        = string
  default     = ""
}

variable "nginx_ingress_load_balancer_hostname" {
  description = "Hostname of the NGINX Ingress Load Balancer"
  type        = string
  default     = ""
}
