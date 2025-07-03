resource "aws_s3_bucket" "static_site" {
  bucket = var.bucket_name
  force_destroy = true  # delete bucket even if there are files

  tags = {
    Name = "my-s3-bucket"
  }
}

resource "aws_s3_bucket_public_access_block" "public_access" {
  bucket = aws_s3_bucket.static_site.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_policy" "public_policy" {
  bucket = aws_s3_bucket.static_site.id

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Effect = "Allow",
      Principal = "*",
      Action = ["s3:GetObject"],
      Resource = "${aws_s3_bucket.static_site.arn}/*"
    }]
  })
}

resource "aws_s3_bucket_website_configuration" "static_site" {
  bucket = aws_s3_bucket.static_site.id

  index_document {
    suffix = "index.html"
  }
}

resource "aws_s3_object" "index_html" {
  bucket = aws_s3_bucket.static_site.id
  key    = "index.html"
  source = "${path.module}/index.html"
  content_type = "text/html"
}