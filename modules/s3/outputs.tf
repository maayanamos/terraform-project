output "bucket_name" {
  description = "The name of the created S3 bucket"
  value = aws_s3_bucket.static_site.id
}

output "website_url" {
  description = "URL of the static website"
  value       = aws_s3_bucket_website_configuration.static_site.website_endpoint
}
