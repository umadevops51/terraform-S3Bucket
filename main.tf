provider "aws" {
  region  = var.region # "us-east-1"
  # profile = var.aws_profile # "terraform-admin"
}

# Generate a random suffix to make the bucket name unique
resource "random_id" "suffix" {
  byte_length = 4
}

resource "aws_s3_bucket" "example" {
  bucket = "${var.bucket_name}-${random_id.suffix.hex}"

  tags = {
    Name        = "MyS3TerraformBucket"
    Environment = "Dev"
  }
}

