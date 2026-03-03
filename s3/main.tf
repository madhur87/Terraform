resource "aws_s3_bucket" "finance_1" {
  bucket = "finance-2024-unique-name-12345"

  tags = {
    description = "S3 bucket for finance data"
  }
}

resource "aws_s3_object" "finance2020" {
  bucket = aws_s3_bucket.finance_1.id
  key    = "financial2020.doc"
  source = "/root/terraform/financial2020.doc"
}