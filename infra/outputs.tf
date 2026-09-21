output "cloudfront_domain_name" {
  description = "Domain name for CloudFront distribution (Frontend URL)"
  value       = aws_cloudfront_distribution.this.domain_name
}

output "s3_bucket_name" {
  description = "Name of the S3 bucket for frontend deployment"
  value       = aws_s3_bucket.react_bucket.id
}

output "alb_dns_name" {
  description = "Application Load Balancer DNS name (Backend API URL)"
  value       = aws_lb.ecs_alb.dns_name
}

output "docdb_endpoint" {
  description = "Amazon DocumentDB Cluster Endpoint"
  value       = aws_docdb_cluster.docdb_cluster.endpoint
}
