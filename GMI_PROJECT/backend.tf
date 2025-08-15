resource "random_id" "bucket_suffix" {
  byte_length = 4
}

resource "aws_s3_bucket" "state_bucket" {
  bucket = "my-terraform-state-bucket-${random_id.bucket_suffix.hex}"
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.state_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_dynamodb_table" "terraform_locks" {
  name         = "terraform-lock-table"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
