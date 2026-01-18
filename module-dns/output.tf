output "route53_name_servers" {
    description = "The name servers of the Route 53 hosted zone"
    value       = aws_route53_zone.r53_zone.name_servers
}

output "instructions" {
  description = "Instructions for setting up DNS"
  value = <<-EOT
    
    ====== DNS SETUP INSTRUCTIONS ======
    
    1. After deployment, get your Load Balancer DNS name from AWS Console:
       - Go to EC2 → Load Balancers
       - Find your ALB/NLB
       - Copy the DNS name (looks like: my-alb-123456.us-east-1.elb.amazonaws.com)
    
    2. Login to Namecheap:
       - Go to Domain List → Manage → Advanced DNS
       - Add a new CNAME record:
         Type: CNAME
         Host: app (for app.${var.domain_name})
         Value: [Paste Load Balancer DNS here]
         TTL: Automatic
    
    3. Optional: Add root domain record:
         Type: A
         Host: @
         Value: [Use AWS EC2 instance public IP or Load Balancer DNS]
    
    4. Wait 5-10 minutes for DNS propagation
    
    Your app will be available at: https://app.${var.domain_name}
    
    ====================================
    
    EOT
}

output "app_url" {
  description = "Your application URL"
  value = "https://app.${var.domain_name}"
}
