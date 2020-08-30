
output "website_bucket_id" {
  value       = aws_s3_bucket.website_main.id
  description = "Website S3 bucket name"
}

output "website_bucket_arn" {
  value       = aws_s3_bucket.website_main.arn
  description = "Website S3 bucket ARN"
}
