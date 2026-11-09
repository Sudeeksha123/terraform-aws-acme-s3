
output "bucket_id" {
  description = "Created S3 bucket name"
  value       = aws_s3_bucket.acme_bucket.id
}

output "bucket_arn" {
  description = "Created S3 bucket ARN"
  value       = aws_s3_bucket.acme_bucket.arn
}

output "aws_region" {
  description = "AWS deployment region"
  value       = "us-east-2"
}
